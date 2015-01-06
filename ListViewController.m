//
//  ListViewController.m
//  FirstPro
//
//  Created by tindle on 15/1/5.
//  Copyright (c) 2015年 tindle. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "ListViewController.h"
#import "CustiomCell.h"
@interface ListViewController ()

@property (nonatomic,strong) NSArray *myArray;

@end

@implementation ListViewController


-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.myArray = [[NSArray alloc]initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"list.plist" ofType:nil]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //有两个id ，一个 id_subTitle, 一个 id_basic. Diction的key有name tag money place
    //设置cellid
    NSDictionary *d = self.myArray[indexPath.row];
//    NSString *cellid = @"id_basic";
//    //获取cellid
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
//    
//    //设置图片
//    NSString *imagePath = [NSString stringWithFormat:@"%@",d[@"tag"]];
////    self.iconImageView.image = [UIImage imageNamed:imagePath];
//    [cell.textLabel setText:d[@"name"]];
//    [cell.detailTextLabel setText:d[@"money"]];
    CustiomCell *cell = (CustiomCell *)[tableView
                                      dequeueReusableCellWithIdentifier:@"id_basic"];
    UILabel *moneyLabel = (UILabel *)[cell viewWithTag:100];
    moneyLabel.text = [d objectForKey:@"money"];
    
    cell.nameLabel.text = [d objectForKey:@"name"];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.myArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 104;
}

@end
