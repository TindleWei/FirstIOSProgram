//
//  TestViewConroller.m
//  FirstPro
//
//  Created by tindle on 15/1/5.
//  Copyright (c) 2015年 tindle. All rights reserved.
//

#import "TestViewController.h"

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(60, 60, 200, 200)];
    btn.backgroundColor = [UIColor greenColor];
    [btn setTitle:@"btn1" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
}

@end


