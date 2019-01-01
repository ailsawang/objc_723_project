//
//  ViewController.m
//  objc-ios-debug
//
//  Created by chunhong wang on 2018/12/25.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSObject *obj;
@property (nonatomic, strong) NSString *string;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.obj = [[NSObject alloc] init];
    self.string = @"test";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
