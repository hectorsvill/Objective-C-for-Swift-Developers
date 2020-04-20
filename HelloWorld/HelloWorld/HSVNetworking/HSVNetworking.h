//
//  HSVNetworking.h
//  HelloWorld
//
//  Created by s on 4/19/20.
//  Copyright © 2020 Hector Steven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HSVNetworking : NSObject

@property (nonatomic, copy, readonly) NSURL *baseURL;

- (instancetype)initWithBaseURL:(NSURL *)baseURL;

- (void)fetchWithCount:(int)count completion:(void (^)(NSData * _Nullable ))completion;

@end

NS_ASSUME_NONNULL_END
