//
//  UIView+CUAddition.m
//  UIKit+CUAddition
//
//  Created by czm on 15/11/16.
//  Copyright © 2015年 czm. All rights reserved.
//

#import "UIView+CUAddition.h"
#import <objc/runtime.h>

@interface UINavigationBar (CUAddition)
@end
@implementation UINavigationBar(CUAddition)

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    if (self.cu_hiddenKeyboardWhenTouchBegin && self.delegate)
    {
        if ([self.delegate isKindOfClass:[UINavigationController class]])
        {
            UIViewController *topVC = [(UINavigationController *)self.delegate topViewController];
            if (topVC)
            {
                [topVC.view endEditing:YES];
            }
        }
    }
}
@end

@implementation UIView (CUAddition)
@dynamic cu_hiddenKeyboardWhenTouchBegin;

- (void)cu_setHiddenKeyboardWhenTouchBegin:(BOOL)cu_hiddenKeyboardWhenTouchBegin
{
    objc_setAssociatedObject(self,
                             @selector(cu_hiddenKeyboardWhenTouchBegin),
                             @(cu_hiddenKeyboardWhenTouchBegin),
                             OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)cu_hiddenKeyboardWhenTouchBegin
{
    return [objc_getAssociatedObject(self, @selector(cu_hiddenKeyboardWhenTouchBegin)) boolValue];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    if (self.cu_hiddenKeyboardWhenTouchBegin)
    {
        [self endEditing:YES];
    }
}

- (CGFloat)cu_originX
{
    return self.frame.origin.x;
}

- (void)cu_setOriginX:(CGFloat)originX
{
    CGRect originFrame = self.frame;
    originFrame.origin.x = originX;
    self.frame = originFrame;
}

- (CGFloat)cu_originY
{
    return self.frame.origin.y;
}

- (void)cu_setOriginY:(CGFloat)originY
{
    CGRect originFrame = self.frame;
    originFrame.origin.y = originY;
    self.frame = originFrame;
}

- (CGFloat)cu_width
{
    return self.frame.size.width;
}

- (void)cu_setWidth:(CGFloat)width
{
    CGRect originFrame = self.frame;
    originFrame.size.width = width;
    self.frame = originFrame;
}

- (CGFloat)cu_height
{
    return self.frame.size.height;
}

- (void)cu_setHeight:(CGFloat)height
{
    CGRect originFrame = self.frame;
    originFrame.size.height = height;
    self.frame = originFrame;
}

- (CGPoint)cu_origin
{
    return self.frame.origin;
}

- (void)cu_setOrigin:(CGPoint)origin
{
    CGRect originFrame = self.frame;
    originFrame.origin = origin;
    self.frame = originFrame;
}

- (CGSize)cu_size
{
    return self.frame.size;
}

- (void)cu_setSize:(CGSize)size
{
    CGRect originFrame = self.frame;
    originFrame.size = size;
    self.frame = originFrame;
}

- (CGFloat)cu_centerX
{
    return self.center.x;
}

- (void)cu_setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)cu_centerY
{
    return self.center.y;
}

- (void)cu_setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (UIImage *)cu_snapshotImage
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, [UIScreen mainScreen].scale);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (UIImage *)cu_snapshotImageAfterScreenUpdates:(BOOL)afterUpdates
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, [UIScreen mainScreen].scale);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:afterUpdates];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (void)cu_removeAllSubviews
{
    while (self.subviews.count)
    {
        [self.subviews.lastObject removeFromSuperview];
    }
}

- (UIViewController *)cu_viewController
{
    UIViewController *vc = nil;
    UIResponder *responder = self;
    while (responder)
    {
        responder = ((UIResponder *)responder).nextResponder;
        if ([responder isKindOfClass:[UIViewController class]])
        {
            vc = (UIViewController *)responder;
            break;
        }
    }

    return vc;
}


@end
