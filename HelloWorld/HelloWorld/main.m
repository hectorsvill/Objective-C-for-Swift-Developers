//
//  main.m
//  HelloWorld
//
//  Created by Hector Steven on 7/13/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HSVLearn.h"
#import "HSVNetworking.h"



int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
//		HSVLearn *learn = [[HSVLearn alloc] init];
//		[learn learnBlocks];

        NSURL *url = [NSURL URLWithString:@"https://pokeapi.co/api/v2/pokemon/?limit=964"];
        HSVNetworking *networking  = [[HSVNetworking alloc] initWithBaseURL:url];

        [networking fetchWithCount:10 completion:^(NSData *data) {
            NSLog(@"data: %@", data);
        }];

        NSLog(@"url: %@", [networking baseURL]);
	}

	return 0;
}
