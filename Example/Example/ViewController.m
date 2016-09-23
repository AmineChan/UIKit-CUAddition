//
//  ViewController.m
//  example
//
//  Created by czm on 15/11/15.
//  Copyright © 2015年 czm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.cu_hiddenKeyboardWhenTouchBegin = YES;
    [self.tableView cu_hiddenSeperatorForNoContentCell];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellIndenditify"];
    
    _dataArray = @[@"1", @"2", @"3"];
}

- (void)viewDidAppear:(BOOL)animated
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma UITableView Delegate and DataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIndenditify = @"cellIndenditify";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndenditify forIndexPath:indexPath];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndenditify];
    }
    
    [cell cu_seperatorFillWidth];
    cell.textLabel.text = _dataArray[indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44.f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}


@end
