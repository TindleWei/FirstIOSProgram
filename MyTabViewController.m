//
//  MyTabViewController.m
//  FirstPro
//
//  Created by tindle on 15/1/5.
//  Copyright (c) 2015年 tindle. All rights reserved.
//

#import "MyTabViewController.h"
#import "TestViewController.h"

@implementation MyTabViewController
@synthesize cell1;

- (void)viewDidLoad {
    [super viewDidLoad];    
    array1 = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5", nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array1 count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * SimpleTableViewIdentifier =@"SimpleTableViewIdentifier";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableViewIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableViewIdentifier];
    }
    UIImage * img = [UIImage imageNamed:@"singleicon"];
    cell.imageView.image = img;
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [array1 objectAtIndex:row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TestViewController *testViewController  = [[TestViewController alloc]init];
    [self.navigationController pushViewController:testViewController animated:YES];
}

@end
