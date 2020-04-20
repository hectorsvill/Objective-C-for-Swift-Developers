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

        NSURL *url = [NSURL URLWithString:@""];
        HSVNetworking *networking  = [[HSVNetworking alloc] initWithBaseURL:url];

	}

	return 0;
}
