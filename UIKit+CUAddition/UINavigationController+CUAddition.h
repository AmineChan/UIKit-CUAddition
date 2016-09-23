//
//  UINavigationController+CUAddition.h
//  UIKit+CUAddition
//
//  Created by czm on 15/11/17.
//  Copyright © 2015年 czm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (CUAddition)

/**
 *  Pops view controllers until the specified view controller is at the top of the navigation stack.
    An array containing the view controllers that were popped from the stack.
 *
 *  @param vc  The view controller that you want to be at the top of the stack. if this view controller is not on the navigation stack, do nothing.
 *  @param animated
 */
- (void)cu_popToDestViewController:(UIViewController *)popToViewController animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
