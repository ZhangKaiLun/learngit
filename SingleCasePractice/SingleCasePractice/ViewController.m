//
//  ViewController.m
//  SingleCasePractice
//
//  Created by Zkl on 15/3/27.
//  Copyright (c) 2015年 Zkl. All rights reserved.
//

#import "ViewController.h"
#import "SingleCase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    SingleCase *case1 = [SingleCase sharedSingleCase];
    SingleCase *case2 = [SingleCase sharedSingleCase];
    SingleCase *case3 = [[SingleCase alloc] init];
    SingleCase *case4 = [case3 copy];

    [case1 release];
    [case2 release];
    [case3 release];
    [case3 release];
    [case4 release];
    
    NSLog(@"%@", case1);
    NSLog(@"%@", case2);
    NSLog(@"%@", case3);
    NSLog(@"%@", case4);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
