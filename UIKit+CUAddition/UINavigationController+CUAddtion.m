//
//  UINavigationController+CUAddition.m
//  UIKit+CUAddition
//
//  Created by czm on 15/11/17.
//  Copyright © 2015年 czm. All rights reserved.
//

#import "UINavigationController+CUAddition.h"

@implementation UINavigationController (CUAddition)

- (void)cu_popToDestViewController:(UIViewController *)popToViewController animated:(BOOL)animated
{
    assert(popToViewController);

    NSArray *viewControllers = [self viewControllers];
    if (![viewControllers containsObject:popToViewController])
    {
        return;
    }

    [self popToViewController:popToViewController animated:animated];
}

@end
