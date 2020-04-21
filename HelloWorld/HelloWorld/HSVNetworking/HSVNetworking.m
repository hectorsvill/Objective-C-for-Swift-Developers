//
//  HSVNetworking.m
//  HelloWorld
//
//  Created by s on 4/19/20.
//  Copyright © 2020 Hector Steven. All rights reserved.
//

#import "HSVNetworking.h"

//MARK: - Private Properties
@interface HSVNetworking()
- (NSURLRequest *)createPokemonListURLRequest;
@property (nonatomic, copy) NSMutableArray *stringArray;
@end

//MARK: - @implementation
@implementation HSVNetworking

- (instancetype)initWithBaseURL:(NSURL *)baseURL
{
    if (self = [super init]){
        _baseURL = [baseURL copy];
    }
    return self;
}

- (NSURLRequest *)createPokemonListURLRequest
{
    NSString *countString = [NSString stringWithFormat:@"%d", limit];
    NSURLComponents *componenets = [NSURLComponents componentsWithURL:_baseURL resolvingAgainstBaseURL:true];
    NSURLQueryItem *limit = [NSURLQueryItem queryItemWithName:@"limit" value:countString];
    componenets.queryItems = @[limit];

    NSURL *url = [componenets URL];
    NSURLRequest *request = [NSMutableURLRequest requestWithURL: url];

    return request;
}


- (void)fetch:(void (^)(NSDictionary *))completion
{
    NSURLRequest *request = [self createPokemonListURLRequest];

    [[[NSURLSession sharedSession] dataTaskWithRequest:request
                                     completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", [error localizedDescription]);
            return;
        }

        if (!data) {
            NSLog(@"Data Error");
            return;
        }

        NSError *jsonError;
        NSDictionary *pokemonDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];

        if (error) {
            NSLog(@"error with json: %@:", [error localizedDescription]);
            return;
        } else {
            if (!pokemonDictionary || [pokemonDictionary isKindOfClass:[NSDictionary class]]){
                completion(pokemonDictionary);
            }
            else {
                NSLog(@"object is not NSDictionary");
                return;
            }
        }
    }] resume];
}




@end
