//
//  main.m
//  objc-debug
//
//  Created by chunhong wang on 2018/12/16.
//

#import <Foundation/Foundation.h>
#import "objc-runtime.h"
#import "runtime.h"
#import "MyObject.h"
#import "MySubObject.h"

#ifdef __LP64__
#   define WORD_SHIFT 3UL
#   define WORD_MASK 7UL
#   define WORD_BITS 64
#else
#   define WORD_SHIFT 2UL
#   define WORD_MASK 3UL
#   define WORD_BITS 32
#endif

static inline uint32_t my_word_align(uint32_t x) {
    return (x + WORD_MASK) & ~WORD_MASK;  //8bit的倍数
}

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
        uint32_t align1 = my_word_align(5);
        uint32_t align2 = my_word_align(88);
        NSObject *tmp = [[NSObject alloc] init];
        MyObject *testObject = [[MyObject alloc] init];
        MySubObject *subObject = [[MySubObject alloc] init];
        
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
        NSString *string22 = string2;
        NSString *string3 = @"2141";
        NSString *string4 = [NSString stringWithFormat:@"%lu", 2141];
        NSString *string5 = [NSString stringWithFormat:@"%lu", 68900];
        NSString *string51 = [NSString stringWithFormat:@"%lu", 689007];
        NSString *string52 = [NSString stringWithFormat:@"%lu", 6890031];
        NSString *string53 = [NSString stringWithFormat:@"%lu", 68900312];
        NSString *string54 = [NSString stringWithFormat:@"哈喽"];
        NSString *string55 = [NSString stringWithFormat:@"哈"];
        NSUInteger length = string1.length;
        NSArray *result = [string1 componentsSeparatedByString:@"c"];
        NSLog(@"string: %@ length: %@ result:%@",string1, @(length), result);
        NSLog(@"string2: %@",string2);
        NSNumber *number1 = [NSNumber numberWithInteger:1];
        NSNumber *number11 = number1;
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
        NSArray *array = [NSArray array];
        NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:10];
        NSLog(@"array:%@ mutableArray:%@",array,muArray);
    }
    return 0;
}
