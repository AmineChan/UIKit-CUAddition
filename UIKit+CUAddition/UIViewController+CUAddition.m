//
//  UIViewController+CUAddition.m
//  UIKit+CUAddition
//
//  Created by czm on 15/11/17.
//  Copyright © 2015年 czm. All rights reserved.
//

#import "UIViewController+CUAddition.h"

@implementation UIViewController (CUAddition)

- (UIViewController *)cu_fromViewController
{
    UINavigationController *navi = self.navigationController;
    if ([self isKindOfClass:[UINavigationController class]])
    {
        navi = (UINavigationController *)self;
    }
    
    NSArray *viewControllers = [navi viewControllers];
    NSInteger index = [viewControllers indexOfObject:self];
    if (index > 0)
    {
        NSInteger index = [viewControllers indexOfObject:self];
        return viewControllers[index-1];
    }
    
    return self;
}

@end
