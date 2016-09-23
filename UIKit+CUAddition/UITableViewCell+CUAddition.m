//
//  UITableViewCell+CUAddition.m
//  UIKit+CUAddition
//
//  Created by czm on 15/11/16.
//  Copyright © 2015年 czm. All rights reserved.
//

#import "UITableViewCell+CUAddition.h"

@implementation UITableViewCell (CUAddition)

- (void)cu_setSeperatorInset:(UIEdgeInsets)seperatorInset
{
    if ([self respondsToSelector:@selector(setSeparatorInset:)])
    {
        [self setSeparatorInset:seperatorInset];
    }
    
    if ([self respondsToSelector:@selector(setLayoutMargins:)])
    {
        [self setLayoutMargins:seperatorInset];
    }
    
    if([self respondsToSelector:@selector(setPreservesSuperviewLayoutMargins:)])
    {
        [self setPreservesSuperviewLayoutMargins:NO];
    }
}

- (void)cu_seperatorFillWidth
{
    if ([self respondsToSelector:@selector(setSeparatorInset:)])
    {
        [self setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([self respondsToSelector:@selector(setLayoutMargins:)])
    {
        [self setLayoutMargins:UIEdgeInsetsZero];
    }
    
    if([self respondsToSelector:@selector(setPreservesSuperviewLayoutMargins:)])
    {
        [self setPreservesSuperviewLayoutMargins:NO];
    }
}

@end
