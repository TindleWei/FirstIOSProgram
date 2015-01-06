//
//  ViewController.m
//  FirstPro
//
//  Created by tindle on 15/1/5.
//  Copyright (c) 2015年 tindle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myLabel;
@synthesize myBtn1;
@synthesize myBtn2;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myLabel.text = @"123";
    
}

-(IBAction)btn1Click:(id)sender {
//    ListViewController *listViewController = [[ListViewController alloc]init];
//    [self.navigationController pushViewController:listViewController animated:YES];
}

-(IBAction)btn2Click:(id)sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
