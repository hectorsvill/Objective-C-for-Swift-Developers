# Objective-C-for-Swift-Developers

#
###  creating variable  
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
###  swiftch case

*Swift*
```swift
func learn2SwitchCase() {
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
}

```

*Objective-C*
```objective-c

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

```

#
###  loops

*Swift*
```swift
func learnLoops() {
	let names  = ["str1", "atr2"]
	for n in names {
		print(n)
	}
}

```

*Objective-C*
```objective-c
void learnLoops() {
	NSArray *names = @[@"hector", @"Marcela"];
	for (NSString *name in names)
		NSLog(@"hello %@\n", name);

	for(int d = 0; d < 10; d++)
		NSLog(@"%d * %d = %d", d, d, d * d);
}
```



#
### nill coalescing

*Swift*
```swift

func learnNillCoalescing() {
	let str: String?
	str = nil
	print("This string is \(str ?? "an empty string")")
}

```

*Objective-C*
```objective-c
void learnNillCoalescing() {
	NSString *str = nil;
	NSLog(@"is nil %@", str ?: @"is nil");
}

```

#
###  Pointers

*Objective-C*
```objective-c

void learnPointers() {
//all objective-c objects must be ponters
//constants
	NSString * const first = @"Hello";
	NSLog(@"%p, %@", first, first);

	NSInteger n = 100;
	NSLog(@"%ld %@ \n",n, first);
}

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
}

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
###   

*Objective-C*
```objective-c
```

#
*Objective-C*
```objective-c
```

#
###   

*Objective-C*
```objective-c
```

#
*Objective-C*
```objective-c
```

#
###   

*Objective-C*
```objective-c
```

#
