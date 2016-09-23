//
//  UIScrollView+CUAddition.h
//  Pods
//
//  Created by czm on 16/3/25.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIScrollView (CUAddition)

- (void)cu_scrollToTopAnimated:(BOOL)animated;
- (void)cu_scrollToBottomAnimated:(BOOL)animated;
- (void)cu_scrollToLeftAnimated:(BOOL)animated;
- (void)cu_scrollToRightAnimated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END