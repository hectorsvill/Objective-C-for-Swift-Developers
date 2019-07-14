//
//  main.m
//  HelloWorld
//
//  Created by Hector Steven on 7/13/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <Foundation/Foundation.h>


#define MYNUMBER 40

void learn1CreatingVariables() {
	
	int n = 42;
	
	NSString *str1 = @"objective-C String!";
	
	char *str2 = "C String!";
		
	NSArray *arr = @[@"arr1", @"arr2"];
	
	
	if (n ==  42)
		NSLog(@"1:%@ 2:%@\n", arr[0], arr[1]);
	else
		NSLog(@"\nThis is %s, %@ \n", str2, str1);
	
	
}

void learn2SwitchCase() {
	int n = 42;
	switch (n) {
		case 1:
		{
			int foo = 1;
			NSLog(@"found %i", foo);
			break;
		}
		case 42:
			NSLog(@"Found %d \n", n);
	}
}


void learn3Loops() {
	NSArray *names = @[@"hector", @"Marcela"];
	for (NSString *name in names)
		NSLog(@"hello %@\n", name);
	
	for(int d = 0; d < 10; d++)
		NSLog(@"%d * %d = %d", d, d, d * d);
}

void learn4NillCoalescing() {
	NSString *str = nil;
	NSLog(@"is nil %@", str ?: @"is nil");
}


int main(int argc, const char * argv[]) {
	@autoreleasepool {
		//learn1CreatingVariables();
		learn2SwitchCase();
		
		
	}
	
	return 0;
}
