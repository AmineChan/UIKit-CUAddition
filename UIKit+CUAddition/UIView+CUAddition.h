//
//  UIView+CUAddition.h
//  UIKit+CUAddition
//
//  Created by czm on 15/11/16.
//  Copyright © 2015年 czm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CUAddition)

@property (nonatomic, setter=cu_setHiddenKeyboardWhenTouchBegin:) BOOL cu_hiddenKeyboardWhenTouchBegin;
@property (nonatomic, setter=cu_setOriginX:) CGFloat cu_originX;    //frame.origin.x
@property (nonatomic, setter=cu_setOriginY:) CGFloat cu_originY;    //frame.origin.y
@property (nonatomic, setter=cu_setWidth:) CGFloat cu_width;        //frame.size.width
@property (nonatomic, setter=cu_setHeight:) CGFloat cu_height;      //frame.size.height
@property (nonatomic, setter=cu_setOrigin:) CGPoint cu_origin;      //frame.origin
@property (nonatomic, setter=cu_setSize:) CGSize cu_size;           //frame.size
@property (nonatomic, setter=cu_setCenterX:) CGFloat cu_centerX;    //center.x
@property (nonatomic, setter=cu_setCenterY:) CGFloat cu_centerY;    //center.y

- (UIImage *)cu_snapshotImage;
- (UIImage *)cu_snapshotImageAfterScreenUpdates:(BOOL)afterUpdates;

- (void)cu_removeAllSubviews;

- (nullable UIViewController *)cu_viewController;

@end

NS_ASSUME_NONNULL_END
