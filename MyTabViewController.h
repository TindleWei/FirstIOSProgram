//
//  MyTabViewController.h
//  FirstPro
//
//  Created by tindle on 15/1/5.
//  Copyright (c) 2015年 tindle. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TestViewController.h"

@interface MyTabViewController  : UITableViewController<UITableViewDataSource,UITableViewDelegate> {
    
    NSMutableArray *array1;
}


@property(strong,nonatomic)IBOutlet UITableView *detailTableView;

@property(strong,nonatomic)IBOutlet UITableViewCell *cell1,*cell2,*cell3;

@end
