//
//  UIPageControl+CUAddition.h
//  UIKit+CUAddition
//
//  Created by czm on 16/3/14.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIPageControl (CUAddition)

@property (nonatomic, setter=cu_setPageIndicatorRadius:) CGFloat cu_pageIndicatorRadius;//dot radius， default is 0, if <=0 do nothing.

@end

NS_ASSUME_NONNULL_END
