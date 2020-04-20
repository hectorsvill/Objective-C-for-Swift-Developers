//
//  HSVLearn.m
//  HelloWorld
//
//  Created by Hector Steven on 7/20/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "HSVLearn.h"
#import "HSVNetworking.h"

@implementation HSVLearn

- (void) print_lStr:(NSString *)str {
	NSLog(@"%@\n", str);
}

- (void)learnCreatingVariables{
	
	int n = 42;
	
	NSString *str1 = @"objective-C String!";
	
	char *str2 = "C String!";
	
	NSArray *arr = @[@"arr1", @"arr2"];
	
	
	if (n ==  42)
		NSLog(@"1:%@ 2:%@\n", arr[0], arr[1]);
	else
		NSLog(@"\nThis is %s, %@ \n", str2, str1);
}

- (void)learnSwitchCase{
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

- (void)learnLoops{
	NSArray *names = @[@"hector", @"Marcela"];
	for (NSString *name in names)
		NSLog(@"hello %@\n", name);
	
	for(int d = 0; d < 10; d++)
		NSLog(@"%d * %d = %d", d, d, d * d);
}

- (void)learnNillCoalescing {
	NSString *str = nil;
	NSLog(@"is nil %@", str ?: @"is nil");
}

- (void)learnPointers{
		//all objective-c objects must be ponters
		//constants
	NSString * const first = @"Hello";
	NSLog(@"%p, %@", first, first);
	
	NSInteger n = 100;
	NSLog(@"%ld %@ \n",n, first);
}

- (void)learnFormatSpecifiers{
		// %@ means "contents of object"
		// %d means "int"
		// %p means "print pointer of object"
		// %f means "floating point"
		// %ld means "long int"
	
	
	NSLog(@"Euler's number: %0.5f", EULERS_NUMBER);
	
	NSInteger i = 10;
	NSLog(@"%ld", (long)i);
}


- (void) learnStrings{
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

- (void)learnMutableString{
	NSMutableString *mutable = [@"mutable String" mutableCopy];
	
	NSMutableString *formatedString = [NSMutableString stringWithFormat:@"%@", @"Object"];
	
	NSLog(@"%@ \n %@ \n", mutable, formatedString);
	
	//store up to 4096 chars
	//NSMutableString  *longString = [NSMutableString stringWithCapacity: 4096];
	
	NSMutableString *mutateString = [ @"some string" mutableCopy];
	[mutateString setString:@"one string"];
	NSLog(@"%@\n", mutateString);
}

- (void) learnPrimitiveTypes{
	//Raw Numbers
//	int i = 0;
//	float f = 1.0001;
//	char c = 'c';
//	char *str = "C String\0";
}


- (void) learnNSNumber{
	NSNumber *i = [NSNumber numberWithInteger:100];
	float number = [i floatValue];
	
	NSNumber *luckyNumber = @EULERS_NUMBER;
	NSNumber *blueSky = @NO;
	NSLog(@"%@\n%@\n%f", luckyNumber, blueSky, number);
}

- (void) learnArrays{
	NSArray *scores = @[@101, @102, @99, @105, @104];
	
	for (NSNumber *score in scores) {
		long number = [score longValue];
		NSLog(@"%ld", number);
	}
	
	NSArray *colors = [NSArray arrayWithObjects:@"red", @"green", @"blue", nil];
	for (NSString *color in [colors reverseObjectEnumerator])
		[self print_lStr:color];
	
	NSLog(@"char at index 0: %@", [colors objectAtIndex:0]);
}

- (void) learnMutableArrays{
	NSMutableArray *colors = [@[@"red", @"green", @"blue"] mutableCopy];
	
	[colors removeObjectAtIndex:0];
	[colors insertObject:@"black" atIndex: 1];
	
	for (NSString *color in [colors reverseObjectEnumerator])
		[self print_lStr:color];
	
	[colors removeAllObjects];
}


- (void) learnSorting{
	NSMutableArray *colors = [@[@"red", @"green", @"blue"] mutableCopy];
	NSArray *sorted = [colors sortedArrayUsingSelector:@selector(compare:)];
	for (NSString *str in sorted)
		[self print_lStr:str];
}
- (void) learnFunntionalTechniques{
	NSMutableArray *colors = [@[@"red", @"green", @"blue"] mutableCopy];
	
		// loops through array
	[colors enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
		NSLog(@"%@", obj);
	}];
	
		// loop through array and find green
	[colors enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
		if([obj isEqualToString:@"green"]) {
			NSLog(@"%@", obj);
			*stop = YES;
		} else
			NSLog(@"%ld", idx);
	}];
}

- (void)learnDictionaries{
	NSDictionary *students0 = @{@"Hector" : @"iOS6",
								@"Pedro" : @"iOS100"};
	
	for (NSString *key in students0)
		NSLog(@"key: %@ Value: %@ \n", key, students0[key]);
	
	NSMutableDictionary *scores = [[NSMutableDictionary alloc] initWithDictionary: @{}];
	[scores addEntriesFromDictionary:@{@"Team76434": @"23232"}];
	[scores addEntriesFromDictionary:@{@"Team32134": @"23232"}];
	for (NSString *str in scores)
		[self print_lStr:scores[str]];
	
}

- (void)learnSets{
	NSSet *mySet = [NSSet setWithObjects:@"one", @"two", nil];
	NSSet *yourSet = [NSSet setWithObjects:@"four", @"five", nil];
	NSSet *ourSet = [mySet setByAddingObjectsFromSet:yourSet];
	
	NSMutableSet *mutableSet = [ourSet mutableCopy];
	[mutableSet addObject:@"six"];

	for (NSString *n in ourSet)
		 [self print_lStr:n];
	
	[mutableSet removeAllObjects];
	
	// NSCountedSet is automaticly mutable and counts number of times objects appear
	NSCountedSet *colors = [NSCountedSet setWithArray:@[@"red", @"red", @"green", @"blue"]];
	
	[colors addObjectsFromArray:@[@"red", @"blue", @"orange", @"yellow"]];
	
	for (NSString *str in colors)
		NSLog(@"%@ appeares %lu times", str, (unsigned long)[colors countForObject:str]);
	
}

- (void) learnGenerics{
	NSMutableArray<NSNumber *> *numbers = [NSMutableArray arrayWithCapacity:2];
	[numbers addObject:@100];
	//[numbers addObject:@"one"]; // generates warning
	[numbers addObject:@200];
	
	NSDictionary<NSString *, NSNumber *> *data = @{@"image01": @2032, @"image02": @90232};
	
}

- (void)learnNSObject{
	
	NSMutableDictionary *dict = [@{@"may":@"5", @"june": @"6"} mutableCopy];
	
	if ([dict isKindOfClass:[NSDictionary class]]) {
		if ([dict respondsToSelector:@selector(removeAllObjects)])
			[dict performSelector:@selector(removeAllObjects) withObject:nil afterDelay:0.01];
	}
}

- (void)learnNSError{
	NSError *error;
	NSString *fileString = [NSString stringWithContentsOfFile:@"hello.txt" encoding:nil error:&error];
	
	NSLog(@"error: %@", fileString);
}

- (void)learnBlocks{
	void (^print42)(void) = ^ {
		// void - block returns nothing
		// (^print42) - set block to a variable called
		// (void) - takes no parameters
		
		[self print_lStr:@"42"];
	};
	
	print42();
	
	NSNumber* (^get42)(void) = ^{
		return @42;
	};
	

    NSLog(@"%@", get42);
	
}

- (void)lernBasicNetworking
{
    NSURL *url = [NSURL URLWithString:@"https://pokeapi.co/api/v2/pokemon/?limit=964"];
    HSVNetworking *networking  = [[HSVNetworking alloc] initWithBaseURL:url];

    [networking fetchWithCount:1 completion:^(NSDictionary *myData) {
        NSLog(@"data: %@", myData);

    }];

    NSLog(@"url: %@", [networking baseURL]);
    
}

@end
