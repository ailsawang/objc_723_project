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
        NSObject *obj1 = [[NSObject alloc] init];
        NSLog(@"obj1 %@",obj1);
        NSNumber *number1 = [NSNumber numberWithInteger:1];
        NSNumber *number2 = [NSNumber numberWithInteger:2];
        NSNumber *number3 = [NSNumber numberWithInteger:3];
        NSNumber *number4 = @(4);
        NSNumber *num5 = [NSNumber numberWithInteger:0xffff];
        NSNumber *num6 = @(0xffffffff89);
        NSNumber *num7 = @(0xfffffff8);
        NSLog(@"number1: %p",number1);
        NSLog(@"number2: %p",number2);
        NSLog(@"number3: %p",number3);
        NSLog(@"number4: %p",number4);
        NSLog(@"number5: %p",num5);
        NSLog(@"number6: %p",num6);
        NSLog(@"number7: %p",num7);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
