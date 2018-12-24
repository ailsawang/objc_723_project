//
//  main.m
//  objc-debug
//
//  Created by chunhong wang on 2018/12/16.
//

#import <Foundation/Foundation.h>
#import "objc-runtime.h"
#import "runtime.h"


NSString *binaryWithInteger(NSUInteger decInt) {
    NSString *string = @"";
    NSUInteger x = decInt;
    while (x > 0) {
        string = [[NSString stringWithFormat:@"%lu", x&1] stringByAppendingString:string];
        x = x >> 1;
    }
    return string;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSObject *tmp = [[NSObject alloc] init];
        struct objc_object *object = (__bridge struct objc_object *)(tmp);
        NSString *tmpIsa = binaryWithInteger(object->isa);
        Class objClass = [NSObject class];
        NSString *tmpClassIsa = binaryWithInteger((uintptr_t)[NSObject class]);
        NSLog(@"tmpIsa: %@",tmpIsa);
        NSLog(@"tmpClassIsa: %@",tmpClassIsa);
        size_t size = sizeof(id);
        void *testObj = (calloc(5, size));
        void *testObj2 = (malloc(size * 5));
        NSLog(@"Hello, World!");
        NSString *string1 = @"abcd";
        NSString *string2 = [NSString stringWithFormat:@"%lu", 5];
        NSString *string3 = @"2141";
        NSUInteger length = string1.length;
        NSArray *result = [string1 componentsSeparatedByString:@"c"];
        NSLog(@"string: %@ length: %@ result:%@",string1, @(length), result);
    }
    return 0;
}
