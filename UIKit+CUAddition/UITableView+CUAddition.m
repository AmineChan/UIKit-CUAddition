//
//  UITableView+CUAddition.m
//  UIKit+CUAddition
//
//  Created by czm on 15/11/16.
//  Copyright © 2015年 czm. All rights reserved.
//

#import "UITableView+CUAddition.h"

@implementation UITableView (CUAddition)

- (void)cu_hiddenSeperatorForNoContentCell
{
    UIView *view = [ [UIView alloc] init];
    view.backgroundColor = [UIColor clearColor];
    [self setTableFooterView:view];
}

@end
