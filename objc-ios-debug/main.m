//
//  main.m
//  objc-ios-debug
//
//  Created by chunhong wang on 2018/12/25.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        size_t size = sizeof(id);
        void *testObj = (calloc(5, size));
        void *testObj2 = (malloc(size * 5));
        NSLog(@"Hello, World!");
        NSString *string1 = @"abcd";
        NSString *string2 = [NSString stringWithFormat:@"%lu", 5];
        NSString *string3 = @"2141";
        NSString *string4 = [NSString stringWithFormat:@"%lu", 2141];
        NSString *string5 = [NSString stringWithFormat:@"%lu", 68900];
        NSString *string51 = [NSString stringWithFormat:@"%lu", 689007];
        NSString *string52 = [NSString stringWithFormat:@"%lu", 6890031];
        NSString *string53 = [NSString stringWithFormat:@"%lu", 68900312];
        NSString *string531 = [NSString stringWithFormat:@"%lu", 689003125];
        NSString *string532 = [NSString stringWithFormat:@"%lu", 6890031254];
        NSString *string54 = [NSString stringWithFormat:@"哈喽"];
        NSString *string55 = [NSString stringWithFormat:@"abc"];
        NSString *string56 = [NSString stringWithFormat:@"abcdef"];
        NSString *string57 = [NSString stringWithFormat:@"abcdefg"];
        NSString *string58 = [NSString stringWithFormat:@"abcdefgh"];
        NSString *string580 = [NSString stringWithFormat:@"abcdefghi"];
        NSString *string581 = [NSString stringWithFormat:@"abcdefghij"];
        NSString *string582 = [NSString stringWithFormat:@"abcdefghijk"];
        NSString *string583 = [NSString stringWithFormat:@"abcdefghijklmnop"];
        NSUInteger length = string1.length;
        NSArray *result = [string1 componentsSeparatedByString:@"c"];
        NSLog(@"string: %@ length: %@ result:%@",string1, @(length), result);
        NSNumber *number10 = [NSNumber numberWithBool:YES];
        NSNumber *number11 = [NSNumber numberWithChar:9];
        NSNumber *number12 = [NSNumber numberWithShort:9];
        NSNumber *number1 = [NSNumber numberWithInteger:1];
        NSNumber *number2 = [NSNumber numberWithInteger:2];
        NSNumber *number3 = [NSNumber numberWithInteger:3];
        NSNumber *number4 = @(4);
        NSNumber *num5 = [NSNumber numberWithInteger:0xffff];
        NSNumber *num6 = @(0xffffffff89);
        NSNumber *num7 = @(0xfffffff8);
        NSNumber *num8  = @(0xfffffffffffff);
        NSNumber *num80 = @(0x7fffffffffffff);
        NSNumber *num81 = @(0xffffffffffffff);
        NSNumber *num82 = @(0xff67ff89ff12ff1);
        NSNumber *num90 = [NSNumber numberWithFloat:9.1];
        NSNumber *num900 = [NSNumber numberWithDouble:9.0];
        NSNumber *num91 = [NSNumber numberWithLongLong:0xffffffffffff];
        NSLog(@"number1: %p",number1);
        NSLog(@"number2: %p",number2);
        NSLog(@"number2p: %p",&number2);
        NSLog(@"number3: %p",number3);
        NSLog(@"number4: %p",number4);
        NSLog(@"number5: %p",num5);
        NSLog(@"number6: %p",num6);
        NSLog(@"number7: %p",num7);
        NSArray *array = [NSArray array];
        NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:10];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
