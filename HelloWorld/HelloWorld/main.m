//
//  main.m
//  HelloWorld
//
//  Created by Hector Steven on 7/13/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <Foundation/Foundation.h>


#define EULERS_NUMBER 2.7182818284590452353602874713527

void learnCreatingVariables() {
	
	int n = 42;
	
	NSString *str1 = @"objective-C String!";
	
	char *str2 = "C String!";
		
	NSArray *arr = @[@"arr1", @"arr2"];
	
	
	if (n ==  42)
		NSLog(@"1:%@ 2:%@\n", arr[0], arr[1]);
	else
		NSLog(@"\nThis is %s, %@ \n", str2, str1);
	
	
}

void learnSwitchCase() {
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

void learnLoops() {
	NSArray *names = @[@"hector", @"Marcela"];
	for (NSString *name in names)
		NSLog(@"hello %@\n", name);
	
	for(int d = 0; d < 10; d++)
		NSLog(@"%d * %d = %d", d, d, d * d);
}

void learnNillCoalescing() {
	NSString *str = nil;
	NSLog(@"is nil %@", str ?: @"is nil");
}

void learnPointers() {
	//all objective-c objects must be ponters
	//constants
	NSString * const first = @"Hello";
	NSLog(@"%p, %@", first, first);
	
	NSInteger n = 100;
	NSLog(@"%ld %@ \n",n, first);
}

void learnFormatSpecifiers() {
	// %@ means "contents of object"
	// %d means "int"
	// %p means "print pointer of object"
	// %f means "floating point"
	// %ld means "long int"
	
	
	NSLog(@"Euler's number: %0.5f", EULERS_NUMBER);
	
	NSInteger i = 10;
	NSLog(@"%ld", (long)i);
}


void LearnStrings() {
	NSString *str = @"objective-c String";
	NSLog(@"%@", str);
	
	NSInteger number = 42;
	
	NSString *output = [NSString stringWithFormat:@"You Pick %ld", (long)number];
	NSLog(@"%@", output);
	
	NSString *output2 = [[NSString alloc] initWithFormat:@"I Picked %ld", (long)number];
	NSLog(@"%@\n", output2);
	
//	NSString *output3 = [[NSString alloc] initWithContentsOfFile:@"hello.txt" usedEncoding: error: nil];
//	NSLog(@"%@\n", output3);
	
	
	
}




int main(int argc, const char * argv[]) {
	@autoreleasepool {
		LearnStrings();
	}

	return 0;
}
