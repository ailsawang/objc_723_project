//
//  main.m
//  objc-ios-debug
//
//  Created by chunhong wang on 2018/12/25.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "objc-runtime.h"

union test_isa_t
{
    test_isa_t() { }
    test_isa_t(uintptr_t value) : bits(value) { }
    Class cls;
    uintptr_t bits;
    
#   define ISA_MASK        0x0000000ffffffff8ULL
#   define ISA_MAGIC_MASK  0x000003f000000001ULL
#   define ISA_MAGIC_VALUE 0x000001a000000001ULL
    struct {
        uintptr_t nonpointer        : 1;
        uintptr_t has_assoc         : 1;
        uintptr_t has_cxx_dtor      : 1;
        uintptr_t shiftcls          : 33; // MACH_VM_MAX_ADDRESS 0x1000000000
        uintptr_t magic             : 6;
        uintptr_t weakly_referenced : 1;
        uintptr_t deallocating      : 1;
        uintptr_t has_sidetable_rc  : 1;
        uintptr_t extra_rc          : 19;
#       define RC_ONE   (1ULL<<45)
#       define RC_HALF  (1ULL<<18)
    };
    
};

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSObject *obj1 = [[NSObject alloc] init];
        NSLog(@"obj1 %@",obj1);
        
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
        
        objc_object *obj = (__bridge struct objc_object *)(obj1);
//        objc_class *cls = (objc_class *)(obj1->isa);
        
        NSNumber *number1 = [NSNumber numberWithInteger:1];
        NSNumber *number2 = [NSNumber numberWithInteger:2];
        NSNumber *number3 = [NSNumber numberWithInteger:3];
        NSNumber *number4 = @(4);
        NSNumber *number44 = @(44.0);
        NSNumber *num5 = [NSNumber numberWithInteger:0xffff];
        NSNumber *num6 = @(0xffffffff89);
        NSNumber *num7 = @(0xfffffff8);
        NSDate *date1 = [NSDate date];
        NSIndexPath *indexPath = [NSIndexPath indexPathWithIndex:6];
        NSLog(@"number1: %p",number1);
        NSLog(@"number2: %p",number2);
        NSLog(@"number3: %p",number3);
        NSLog(@"number4: %p",number4);
        NSLog(@"number44: %p",number44);
        NSLog(@"number5: %p",num5);
        NSLog(@"number6: %p",num6);
        NSLog(@"number7: %p",num7);
        NSLog(@"date: %p",date1);
        NSLog(@"indexPath: %p",indexPath);
        
        union test_isa_t isa_tt = test_isa_t(0);
        size_t s3 = sizeof(isa_tt);
        size_t s1 = sizeof(test_isa_t);
        size_t s2 = sizeof(uintptr_t);
        isa_tt.has_assoc = 0xffff;
        isa_tt.has_cxx_dtor = 0x66666666;
        NSLog(@"%u %u %u",size, s1, s2);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
