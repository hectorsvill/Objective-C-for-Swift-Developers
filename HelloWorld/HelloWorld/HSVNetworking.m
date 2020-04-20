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


- (void)fetchWithBaseURL:(NSURL *)baseURL
{

}


@end
