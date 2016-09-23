//
//  UITabBar+CUAddition.h
//  UIKit+CUAddition
//
//  Created by czm on 15/11/16.
//  Copyright © 2015年 czm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITabBar (CUAddition)
@property (nonatomic, setter=cu_setDotBadgeRadius:) CGFloat cu_dotBadgeRadius;//dot radius， default is 5.

- (void)cu_showDotBadgeOnTabIndex:(NSInteger)tabIndex;
- (void)cu_hideDotBadgeOnTabIndex:(NSInteger)tabIndex;

@end

NS_ASSUME_NONNULL_END
