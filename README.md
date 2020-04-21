# Objective-C-for-Swift-Developers

## Table of contents
* [Creating Variable ](#creating-variable  )
* [Switch Case](#switch-case)
* [Loops](#Loops)
* [Nill Coalescing](#nill-coalescing)
* [Pointers](#pointers)
* [Format Specifiers ](#Format-Specifiers)
* [Strings](#Strings)
* [Manipulating and evaluating strings](#Manipulatind-and-evaluating-strings)
* [Mutable String](#Mutable-String)
* [Primitive Types](#Primitive-Types)
* [NSNumber](#NSNumber)
* [Arrays](#Arrays)
* [Mutable Arrays](#Mutable-Arrays)
* [Sorting](#Sorting)
* [Functional Techniques](#Functional-Techniques)
* [Dictionaries](#Dictionaries)
* [Sets](#Sets)
* [Generics](#Generics)
* [NSValue](#NSValue)
* [NSData](#NSData)
* [NSObject](#NSObject)
* [NSError](#NSError)
* [Blocks](#Blocks)
* [NSURLSession](#NSURLSession)
* [Instance Variables](#ivars)
* [Pure Properties](#Pure-Properties)
* [Private Properties](#Private-Properties)
* [Property Attributes](#Property-Attributes)
* []()
* []()
* []()

#
##  Creating Variable  
*Swift*
```swift
let str = "this is swift"
let i = 42
let arr = ["one", "two"]
print("1.\(arr[0]) 2.\(arr[1])")
```

*Objective-C*
```objective-c
NSString *str1 = @"objective-C String!";
int i = 42
NSArray *arr = @[@"arr1", @"arr2"];

if (n ==  42)
	NSLog(@"1:%@ 2:%@\n", arr[0], arr[1]);
else
	NSLog(@"\nThis is %s, %@ \n", str2, str1);


```

#
##  Switch Case

*Swift*
```swift

let n = 42
switch n {
case 1...19:
	print("a number between 1...19")
case 20...42:
	let x = 10
	print("found 42 and x = \(x)")
default:
	print("default")
}


```

*Objective-C*
```objective-c


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

```

#
##  Loops

*Swift*
```swift

let names  = ["str1", "atr2"]
for n in names {
	print(n)
}


```

*Objective-C*
```objective-c

NSArray *names = @[@"hector", @"Marcela"];
for (NSString *name in names)
	NSLog(@"hello %@\n", name);

for(int d = 0; d < 10; d++)
	NSLog(@"%d * %d = %d", d, d, d * d);

```



#
### Nill Coalescing

*Swift*
```swift

let str: String?
str = nil
print("This string is \(str ?? "an empty string")")


```

*Objective-C*
```objective-c

NSString *str = nil;
NSLog(@"is nil %@", str ?: @"is nil");


```

#
###  Pointers

*Objective-C*
```objective-c
//all objective-c objects must be ponters
//constants
NSString * const first = @"Hello";
NSLog(@"%p, %@", first, first);

NSInteger n = 100;
NSLog(@"%ld %@ \n",n, first);
```

#
###  Format Specifiers 

*Objective-C*
```objective-c
void learnFormatSpecifiers() {
// %@ means "contents of object"
// %d means "int"
// %p means "print pointer of object"
// %f means "floating point"
// %ld means "long int"


NSLog(@"Euler's number: %0.5f", EULERS_NUMBER);

NSInteger i = 10;
NSLog(@"%ld", (long)i);


```

#

###   Strings

*Objective-C*
```objective-c
NSString *str = @"objective-c String";
NSLog(@"%@", str);

NSInteger number = 42;

NSString *output = [NSString stringWithFormat:@"You Pick %ld", (long)number];
NSLog(@"%@", output);

NSString *output2 = [[NSString alloc] initWithFormat:@"I Picked %ld", (long)number];
NSLog(@"%@\n", output2);
```


## Manipulating and evaluating strings
*Objective-C*
```objective-c
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
```

#
###   Mutable String 

*Objective-C*
```objective-c
NSMutableString *mutable = [@"mutable String" mutableCopy];

NSMutableString *formatedString = [NSMutableString stringWithFormat:@"%@", @"Object"];

NSLog(@"%@ \n %@ \n", mutable, formatedString);

//store up to 4096 chars
//NSMutableString  *longString = [NSMutableString stringWithCapacity: 4096];

NSMutableString *mutateString = [ @"some string" mutableCopy];
[mutateString setString:@"one string"];
NSLog(@"%@\n", mutateString);

```
#
### Primitive Types
### 

*Objective-C*
```objective-c
//Raw Numbers
int i = 0;
float f = 1.0001;
char c = 'c';
char *str = "C String\0";

```




### NSNumber

*Objective-C*
```objective-c

NSNumber *i = [NSNumber numberWithInteger:100];
float number = [i floatValue];

NSNumber *luckyNumber = @EULERS_NUMBER;
NSNumber *blueSky = @NO;
NSLog(@"%@\n%@\n", luckyNumber, blueSky);
```

#
###   Arrays

*Objective-C*
```objective-c
NSArray *scores = @[@101, @102, @99, @105, @104];

for (NSNumber *score in scores) {
	//NSLog(@"%@ \n", score);
	long number = [score longValue];
	NSLog(@"%ld", number);
}

NSArray *colors = [NSArray arrayWithObjects:@"red", @"green", @"blue", nil];
for (NSString *color in [colors reverseObjectEnumerator]) {
	print_l(color); // print funtion i wrote 
}

NSLog(@"char at index 0: %@", [colors objectAtIndex:0]);

```

#
### Mutable Arrays

*Objective-C*
```objective-c
NSMutableArray *colors = [@[@"red", @"green", @"blue"] mutableCopy];

[colors removeObjectAtIndex:0];
[colors insertObject:@"black" atIndex: 1];

for (NSString *color in [colors reverseObjectEnumerator]) {
	print_l(color);
}

[colors removeAllObjects];

```

# Sorting
###   

*Objective-C*
```objective-c

NSMutableArray *colors = [@[@"red", @"green", @"blue"] mutableCopy];

NSArray *sorted = [colors sortedArrayUsingSelector:@selector(compare:)];

for (NSString *s in sorted) {
	print_l(s);
}
```

# Functional Techniques
*Objective-C*
```objective-c

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
	} else {
		NSLog(@"%ld", idx);
	}
}];
```

# Dictionaries
###   

*Objective-C*
```objective-c

NSDictionary *students0 = @{@"Hector" : @"iOS6", @"Pedro" : @"iOS100"};

for (NSString *key in students0)
	NSLog(@"key: %@ Value: %@ \n", key, students0[key]);

NSMutableDictionary *scores = [[NSMutableDictionary alloc] initWithDictionary: @{}];

[scores addEntriesFromDictionary:@{@"Team76434": @"23232"}];
[scores addEntriesFromDictionary:@{@"Team32134": @"23232"}];

for (NSString *str in scores)
	[self print_lStr:scores[str]];


```
# Sets
###   

*Objective-C*
```objective-c
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

```
###

# Generics 
*Objective-C*
```objective-c
NSMutableArray<NSNumber *> *numbers = [NSMutableArray arrayWithCapacity:2];
[numbers addObject:@100];
//[numbers addObject:@"one"]; // generates warning
[numbers addObject:@200];

NSDictionary<NSString *, NSNumber *> *data = @{@"image01": @2032, @"image02": @90232};

```

# NSValue
###   

*Objective-C*
```objective-c

// A generic object wrapper that will handle multiple types like CG types
```

# NSData
###   

*Objective-C*
```objective-c

// In Swift its called Data and its identical

```

# NSObject
###   

*Objective-C*
```objective-c

// Universal base class, almost all clases inherit from it.
// Both a class and protocol.

NSMutableDictionary *dict = [@{@"may":@"5", @"june": @"6"} mutableCopy];

if ([dict isKindOfClass:[NSDictionary class]]) {
	if ([dict respondsToSelector:@selector(removeAllObjects)])
		[dict performSelector:@selector(removeAllObjects) withObject:nil afterDelay:0.01];
}

```
# NSError
###   

*Objective-C*
```objective-c
NSError *error;
NSString *fileString = [NSString stringWithContentsOfFile:@"hello.txt" encoding:nil error:&error];

NSLog(@"error: %@", error);
```

# Blocks
###   

*Swift*
```objective-c
let print42 = {
	print("42");
}

```

*Objective-C*
```objective-c

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


```

# NSURLSession
###   

*Objective-C*
```objective-c
- (void)fetchWithCount:(int)count completion:(void (^)(NSDictionary *))completion
{
    NSString *countString = [NSString stringWithFormat:@"%d", count];
    NSURLComponents *componenets = [NSURLComponents componentsWithURL:_baseURL resolvingAgainstBaseURL:true];
    NSURLQueryItem *limit = [NSURLQueryItem queryItemWithName:@"limit" value:countString];
    componenets.queryItems = @[limit];

    NSURL *url = [componenets URL];
    NSURLRequest *request = [NSMutableURLRequest requestWithURL: url];

    [[[NSURLSession sharedSession] dataTaskWithRequest:request
                                     completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", [error localizedDescription]);
            return;
        }

        if (!data) {
            NSLog(@"Data Error");
            return;
        }

        NSError *jsonError;
        NSDictionary *pokemonDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];

        if (error) {
            NSLog(@"error with json: %@:", [error localizedDescription]);
            return;
        } else {
            if (!pokemonDictionary || [pokemonDictionary isKindOfClass:[NSDictionary class]]){
                completion(pokemonDictionary);
            }
            else {
                NSLog(@"object is not NSDictionary");
                return;
            }
        }
    }] resume];
}


```


# ivars
## Instance Varaibles
###   
    
- `@public` to provide acces after init
- ivars ar available `@implementation`
    
*Objective-C*
```objective-c
@interface HSVNetworking : NSObject {
    @public
    int limit;
}

```

```objective-c
NSURL *url = [NSURL URLWithString:@"https://pokeapi.co/api/v2/pokemon/"];
HSVNetworking *networking  = [[HSVNetworking alloc] initWithBaseURL:url];
networking->limit = 10;
```
# Pure-Properties
## `@property`
- A property is a method that gets and sets the value of an instance varaibale.
- Creates an ivar called `_baseURL`. (_ + object name)
- You can create your unique ivar with `@synthesize`.

```objective-c
//  HSVNetworking.h
@interface HSVNetworking : NSObject

@property NSURL *baseURL;

@end
```
#


# Private-Properties

-  create a class extension
    -  Create a second `@interface` for the class inside the `@implementation` file.
    - We move private properties to a class extension.

- NOTE: We can only create class extensions from classes we have source code to. ( canot extend from UIKit classes)

*Objective-C*
```objective-c
//  HSVNetworking.m
//  MARK: - Private Properties

@interface HSVNetworking()

- (NSURLRequest *)createPokemonListURLRequest;
@property (nonatomic, copy) NSMutableArray *stringArray;

@end

```

#


#
###   

*Objective-C*
```objective-c
```

#
###   

*Objective-C*
```objective-c
@end
```

#
