//
//  main.m
//  HelloWorld
//
//  Created by Hector Steven on 7/13/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <Foundation/Foundation.h>




void learn1() {
	
	int n = 42;
	
	NSString *str1 = @"objective-C String!";
	
	char *str2 = "C String!";
		
	NSArray *arr = @[@"arr1", @"arr2"];
	
	if (n ==  42)
		NSLog(@"found it");
	else
		NSLog(@"\nThis is %s, %i \n", str2, n);
		
		
	switch (n) {
		case 1:
		{
			int foo = 1;
			NSLog(@"found %i", foo);
			break;
		}
	}
	//wrong
	//	switch (n) {
	//		case 2:
	//			NSLog(@"found it")
	//			int i = 0;
	//			break;
	//
	//	}

}


void learn2Loops() {
	NSArray *names = @[@"hector", @"Marcela"];
	for (NSString *name in names)
		NSLog(@"hello %@\n", name);
	
	for(int d = 0; d < 10; d++)
		NSLog(@"%d * %d = %d", d, d, d * d);
}

void learn3NillCoalescing() {
	NSString *str = nil;
	NSLog(@"is nil %@", str ?: @"is nil");
}


int main(int argc, const char * argv[]) {
	@autoreleasepool {
		//learn1();
		//learn2Loops();
		learn3NillCoalescing();
	}
	
	return 0;
}
