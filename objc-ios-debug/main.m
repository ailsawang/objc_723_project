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
        NSObject *firstObject = [[NSObject alloc] init];
        NSLog(@"first object : %@",firstObject);
        // 标记指针
        // NSNumber
        NSNumber *number0 = [NSNumber numberWithChar:9];
        NSNumber *number1 = [NSNumber numberWithShort:100];
        NSNumber *number2 = @(4);
        NSNumber *number21 = @(-4);
        NSNumber *number3 = [NSNumber numberWithInteger:0xffffff]; //long 或者 longlong 8bytes
        NSNumber *number31 = number3;  //复制标记指针
        NSNumber *number32 = @(0x7fffffffffffff);  //正数max number类标记指针的值
        NSNumber *number33 = @(0x8fffffffffffff);  //超过就在堆上分配内存，因为还有一个标记位表示正负
        NSNumber *number4 = [NSNumber numberWithFloat:100000.0];
        NSNumber *number41 = [NSNumber numberWithFloat:100000.1];
        NSNumber *number42 = [NSNumber numberWithFloat:-100000.0];
        NSNumber *number5 = [NSNumber numberWithDouble:9.0];
        NSNumber *number51 = [NSNumber numberWithDouble:9.1];
        NSLog(@"number0: %p %@",number0,number0);
        NSLog(@"number1: %p %@",number1,number1);
        NSLog(@"number2: %p %@",number2,number2);
        NSLog(@"number21: %p %@",number21,number21);
        NSLog(@"number3: %p %@",number3,number3);
        NSLog(@"number31: %p %@",number31,number31);
        NSLog(@"number32: %p %@",number32,number32);
        NSLog(@"number33: %p %@",number33,number33);
        NSLog(@"number4: %p %@",number4,number4);
        NSLog(@"number41: %p %@",number41,number41);
        NSLog(@"number42: %p %@",number42,number42);
        NSLog(@"number5: %p %@",number5,number5);
        NSLog(@"number51: %p %@",number51,number51);
        
        
        // NSString
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
        NSArray *array = [NSArray array];
        NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:10];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
