//
//  NSURLRequest+HSVPokemonList.m
//  HelloWorld
//
//  Created by s on 4/21/20.
//  Copyright © 2020 Hector Steven. All rights reserved.
//

#import "NSURLRequest+HSVPokemonList.h"

@implementation NSURLRequest (HSVPokemonList)

+ (NSURLRequest *)HSVPokemonList:(NSURL *)baseURL limit:(int)limit
{
    NSString *countString = [NSString stringWithFormat:@"%d", limit];
    NSURLComponents *componenets = [NSURLComponents componentsWithURL:baseURL resolvingAgainstBaseURL:true];
    NSURLQueryItem *limitQuery = [NSURLQueryItem queryItemWithName:@"limit" value:countString];
    componenets.queryItems = @[limitQuery];

    NSURL *url = [componenets URL];
    NSURLRequest *request = [[self new] initWithURL:url];

    return request;
}

@end
