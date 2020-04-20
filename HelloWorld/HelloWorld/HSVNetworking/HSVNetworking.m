//
//  HSVNetworking.m
//  HelloWorld
//
//  Created by s on 4/19/20.
//  Copyright © 2020 Hector Steven. All rights reserved.
//

#import "HSVNetworking.h"

@implementation HSVNetworking

- (instancetype)initWithBaseURL:(NSURL *)baseURL
{
    if (self = [super init]){
        _baseURL = [baseURL copy];
    }
    return self;
}


- (void)fetchWithCount:(int)count completion:(void (^)(NSDictionary *))completion
{
    NSString *countString = [NSString stringWithFormat:@"%d", count];
    NSURLComponents *componenets = [NSURLComponents componentsWithURL:_baseURL resolvingAgainstBaseURL:true];
    NSURLQueryItem *limit = [NSURLQueryItem queryItemWithName:@"limit" value:countString];
    componenets.queryItems = @[limit];

    NSURL *url = [componenets URL];
    NSURLRequest *request = [NSMutableURLRequest requestWithURL: url];

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
