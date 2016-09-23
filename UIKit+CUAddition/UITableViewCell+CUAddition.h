//
//  UITableViewCell+CUAddition.h
//  UIKit+CUAddition
//
//  Created by czm on 15/11/16.
//  Copyright © 2015年 czm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableViewCell (CUAddition)

- (void)cu_setSeperatorInset:(UIEdgeInsets)seperatorInset;
- (void)cu_seperatorFillWidth;// [self cu_setSeperatorInset:UIEdgeInsetsZero]

@end

NS_ASSUME_NONNULL_END
