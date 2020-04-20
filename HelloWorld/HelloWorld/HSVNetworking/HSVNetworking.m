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


- (void)fetchWithCount:(int)count completion:(void (^)(NSData *))completion
{
    NSString *countString = [NSString stringWithFormat:@"%d", count];
    NSURLComponents *componenets = [NSURLComponents componentsWithURL:_baseURL resolvingAgainstBaseURL:true];
    NSURLQueryItem *limit = [NSURLQueryItem queryItemWithName:@"limit" value:countString];
    componenets.queryItems = @[limit];

    NSURL *url = [componenets URL];
    NSURLRequest *request = [NSMutableURLRequest requestWithURL: url];


    [[[NSURLSession sharedSession] dataTaskWithURL: _baseURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"Error: %@", [error localizedDescription]);
            return;
        }

        if (!data) {
            NSLog(@"Data Error");
            return;
        }

        NSLog(@"data: %@", [data bytes]);
        [completion data];

    }] resume];


//    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {

//    } ] resume];
}


@end
