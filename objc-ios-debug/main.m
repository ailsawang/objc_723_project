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
//        // NSNumber
//        NSNumber *number0 = [NSNumber numberWithChar:9];
//        NSNumber *number1 = [NSNumber numberWithShort:100];
//        NSNumber *number2 = @(4);
//        NSNumber *number21 = @(-4);
//        NSNumber *number3 = [NSNumber numberWithInteger:0xffffff]; //long 或者 longlong 8bytes
//        NSNumber *number31 = number3;  //复制标记指针
//        NSNumber *number32 = @(0x7fffffffffffff);  //正数max number类标记指针的值
//        NSNumber *number33 = @(0x8fffffffffffff);  //超过就在堆上分配内存，因为还有一个标记位表示正负
//        NSNumber *number4 = [NSNumber numberWithFloat:100000.0];
//        NSNumber *number41 = [NSNumber numberWithFloat:100000.1];
//        NSNumber *number42 = [NSNumber numberWithFloat:-100000.0];
//        NSNumber *number5 = [NSNumber numberWithDouble:9.0];
//        NSNumber *number51 = [NSNumber numberWithDouble:9.1];
//        NSLog(@"number0: %p %@",number0,number0);
//        NSLog(@"number1: %p %@",number1,number1);
//        NSLog(@"number2: %p %@",number2,number2);
//        NSLog(@"number21: %p %@",number21,number21);
//        NSLog(@"number3: %p %@",number3,number3);
//        NSLog(@"number31: %p %@",number31,number31);
//        NSLog(@"number32: %p %@",number32,number32);
//        NSLog(@"number33: %p %@",number33,number33);
//        NSLog(@"number4: %p %@",number4,number4);
//        NSLog(@"number41: %p %@",number41,number41);
//        NSLog(@"number42: %p %@",number42,number42);
//        NSLog(@"number5: %p %@",number5,number5);
//        NSLog(@"number51: %p %@",number51,number51);
        
        // 标记指针
        // NSString
        NSString *string1 = @"abcd";   //_NSCFConstantString 常量
//        NSString *string11 = [NSString stringWithUTF8String:"2140"];
//        NSString *string12 = [NSString stringWithString:@"2143"];
//        NSString *string122 = [NSString stringWithString:@"abcd"];
//        NSString *string13 = [NSString stringWithString:string1];
//        NSString *string14 = [NSString stringWithString:string11];
//        NSString *xString1 = [NSString stringWithFormat:@"hgfwpaiehiow"];
//        NSString *xString11 = [NSString stringWithString:xString1];
//        NSString *string15 = [NSString stringWithFormat:@"2143"];
//        NSString *string16 = [[NSString alloc] initWithFormat:@"%u",2143];
//        NSString *string17 = [[NSString alloc] initWithString:string11];
        NSString *string2 = [NSString stringWithFormat:@"%u", 5];
        NSString *string21 = [NSString stringWithFormat:@"%zu", 900312540];
        //英文
        NSString *string3 = [NSString stringWithFormat:@"abc"];    //unicode编码
        NSString *string31 = [NSString stringWithFormat:@"abcdefg"];
        NSString *string32 = [NSString stringWithFormat:@"abcdefghi"];
        NSString *string33 = [NSString stringWithFormat:@"abcdefghij"];
        //中文
        NSString *string4 = [NSString stringWithFormat:@"一"]; //\u4E00
        NSString *string41 = [NSString stringWithFormat:@"⺀"]; //\u2E80
        
        NSLog(@"string1 : %p %@",string1, string1);
        NSLog(@"string2 : %p %@",string2, string2);
        NSLog(@"string21: %p %@",string21, string21);
        NSLog(@"string3 : %p %@",string3, string3);
        NSLog(@"string31: %p %@",string31, string31);
        NSLog(@"string32: %p %@",string32, string32);
        NSLog(@"string33: %p %@",string33, string33);
        NSLog(@"string4 : %p %@",string4, string4);
        NSLog(@"string41: %p %@",string41, string41);
        
//        NSArray *array = [NSArray array];
//        NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:10];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
