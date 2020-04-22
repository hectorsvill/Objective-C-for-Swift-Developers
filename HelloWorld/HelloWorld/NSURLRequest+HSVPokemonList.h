//
//  NSURLRequest+HSVPokemonList.h
//  HelloWorld
//
//  Created by s on 4/21/20.
//  Copyright © 2020 Hector Steven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURLRequest (HSVPokemonList)

+ (NSURLRequest *)HSVPokemonList:(NSURL *)baseURL limit:(int)limit;

@end

NS_ASSUME_NONNULL_END
