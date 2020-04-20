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


- (void)fetchWithCount:(int)count
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
            NSLog(@"Error: %@", [error localizedRecoverySuggestion]);
            return;
        }

        if (!data) {
            NSLog(@"data Error: %@", [error localizedRecoverySuggestion]);
            return;
        }

        NSLog(@"%@", [data bytes]);


    } ] resume];


}


@end
