//
//  ViewController.h
//  FirstPro
//
//  Created by tindle on 15/1/5.
//  Copyright (c) 2015年 tindle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListViewController.h"

@interface ViewController : UIViewController

@property(strong, nonatomic)IBOutlet UILabel *myLabel;

@property(strong, nonatomic)IBOutlet UIButton *myBtn1;

@property(strong, nonatomic)IBOutlet UIButton *myBtn2;

-(IBAction)btn1Click:(id)sender;

-(IBAction)btn2Click:(id)sender;

@end

