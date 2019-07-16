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


void learnStrings() {
	NSString *str = @"objective-c String";
	NSLog(@"%@", str);
	
	NSInteger number = 42;
	//creating strings
	//1
	NSString *output = [NSString stringWithFormat:@"You Pick %ld", (long)number];
	NSLog(@"%@", output);
	//2
	NSString *output2 = [[NSString alloc] initWithFormat:@"I Picked %ld", (long)number];
	NSLog(@"%@\n", output2);
	
	//load contents of file
	NSString *fileOutput = [[NSString alloc] initWithContentsOfFile:@"hello..text" usedEncoding:nil error:nil];
	NSLog(@"%@\n", fileOutput); // null
	
	// Manipulating and Evaluating Strings
	NSString *stringByReaplicingOccurrencesofString = [str stringByReplacingOccurrencesOfString:@"String" withString: @"stringByReaplicingOccurrencesofString"];
	NSLog(@"%@ \n", stringByReaplicingOccurrencesofString); // objective-c stringByReaplicingOccurrencesofString

	NSString *stringByAppendingString = [output stringByAppendingString:@" - append this string!"];
	NSLog(@"%@\n", stringByAppendingString); // You Pick 42 - append this string!
	
	
	NSString *substringFromIndex = [output substringFromIndex: 4];
	NSLog(@"%@\n", substringFromIndex); // Pick 42
	
	NSArray *componentsSeparatedByString = [output componentsSeparatedByString: @" "];
	NSLog(@"%ld\n", componentsSeparatedByString.count); // 3
	
//	BOOL checkIsEqualtoString = [@"str" isEqualToString:@"str"];
	
	if ( [@"str" isEqualToString:@"str"]){
		NSInteger intToString = [@"42" integerValue];
		NSLog(@"%ld\n", (long)intToString * 4);
	}
	
	if ([output containsString: @"42"]) {
	}
}

void learnMutableString() {
	NSMutableString *mutable = [@"mutable String" mutableCopy];
	
	NSMutableString *formatedString = [NSMutableString stringWithFormat:@"%@", @"Object"];
	
	NSLog(@"%@ \n %@ \n", mutable, formatedString);
	
	//store up to 4096 chars
	//NSMutableString  *longString = [NSMutableString stringWithCapacity: 4096];
	
	NSMutableString *mutateString = [ @"some string" mutableCopy];
	[mutateString setString:@"one string"];
	NSLog(@"%@\n", mutateString);
}


void learnNSNumber() {
	NSNumber *i = [NSNumber numberWithInteger:100];
	float number = [i floatValue];
	
	NSNumber *luckyNumber = @EULERS_NUMBER;
	NSNumber *blueSky = @NO;
	NSLog(@"%@\n%@\n", luckyNumber, blueSky);
}

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		learnNSNumber();
	}

	return 0;
}
