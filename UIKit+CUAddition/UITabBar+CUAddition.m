//
//  UITabBar+CUAddition.m
//  UIKit+CUAddition
//
//  Created by czm on 15/11/16.
//  Copyright © 2015年 czm. All rights reserved.
//

#import "UITabBar+CUAddition.h"
#import <objc/runtime.h>

@implementation UITabBar (CUAddition)
@dynamic cu_dotBadgeRadius;

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self cu_setDotBadgeRadius:5];
    }
    
    return self;
}

- (void)cu_setDotBadgeRadius:(CGFloat)cu_dotBadgeRadius
{
    objc_setAssociatedObject(self, @selector(cu_dotBadgeRadius), @(cu_dotBadgeRadius), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)cu_dotBadgeRadius
{
    return [objc_getAssociatedObject(self, @selector(cu_dotBadgeRadius)) floatValue];
}

- (NSInteger)cu_dotBadgeStartTag
{
    return 888;
}

- (void)cu_showDotBadgeOnTabIndex:(NSInteger)tabIndex
{
    //remove old badge
    [self cu_removeDotBadgeOnItemIndex:tabIndex];
    
    //create new badge
    UIView *badgeView = [[UIView alloc] init];
    badgeView.tag = [self cu_dotBadgeStartTag] + tabIndex;
    badgeView.layer.cornerRadius = self.cu_dotBadgeRadius;
    badgeView.backgroundColor = [UIColor redColor];
    CGRect tabFrame = self.frame;
    
    NSInteger tabCount = self.items.count;
    CGFloat dotWith = self.cu_dotBadgeRadius*2;
    
    //set badge frame
    CGFloat percentX = (tabIndex + 0.6) / tabCount;
    CGFloat x = ceilf(percentX * tabFrame.size.width);
    CGFloat y = ceilf(0.1 * tabFrame.size.height);
    badgeView.frame = CGRectMake(x, y, dotWith, dotWith);
    
    [self addSubview:badgeView];
}

- (void)cu_hideDotBadgeOnTabIndex:(NSInteger)tabIndex
{
    [self cu_removeDotBadgeOnItemIndex:tabIndex];
}

- (void)cu_removeDotBadgeOnItemIndex:(NSInteger)tabIndex
{
    NSInteger startTag = [self cu_dotBadgeStartTag];
    for (UIView *subView in self.subviews)
    {
        if (subView.tag == startTag+tabIndex)
        {
            [subView removeFromSuperview];
        }
    }
}

@end
