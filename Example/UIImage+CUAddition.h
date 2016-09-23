//
//  UIImage+CUAddition.h
//  UIKit+CUAddition
//
//  Created by czm on 15/11/16.
//  Copyright © 2015年 czm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (CUAddition)

/**
 *  Creates and returns a image object with the given color.
 *
 *  @param color The color.
 *
 *  @return The image object
 */
+ (nullable UIImage *)cu_imageWithColor:(UIColor *)color;

/**
 *  Creates and returns a image object with the given color and size.
 *
 *  @param color The color.
 *  @param size  The size.
 *
 *  @return The image object
 */
+ (nullable UIImage *)cu_imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 *  Creates and returns a new UIImage object with given radius.
 *
 *  @param radius         The radius of each corner oval. Values larger than half the
                          rectangle's width or height are clamped appropriately to half
                          the width or height.
 *
 *  @return The image object
 */
- (UIImage *)cu_imageByRoundCornerRadius:(CGFloat)radius;

/**
 *  Creates and returns a new UIImage object with given params.
 *
 *  @param radius         The radius of each corner oval.
 *  @param borderWidth    The inset border line width.
 *  @param borderColor    The border stroke color. nil means clear color
 *
 *  @return The image object
 */
- (UIImage *)cu_imageByRoundCornerRadius:(CGFloat)radius
                             borderWidth:(CGFloat)borderWidth
                             borderColor:(nullable UIColor *)borderColor;

/**
 *  Creates and returns a new UIImage object with given params.
 *
 *  @param radius         The radius of each corner oval.
 *  @param borderWidth    The inset border line width.
 *  @param borderColor    The border stroke color. nil means clear color
 *  @param corners        A bitmask value that identifies the corners that you want rounded.
 *  @param borderLineJoin The border line join
 *
 *  @return The image object
 */
- (UIImage *)cu_imageByRoundCornerRadius:(CGFloat)radius
                             borderWidth:(CGFloat)borderWidth
                             borderColor:(nullable UIColor *)borderColor
                                 corners:(UIRectCorner)corners
                          borderLineJoin:(CGLineJoin)borderLineJoin;

/**
 * Returns a grayscaled image.
 */
- (UIImage *)cu_imageByGrayscale;

/**
 *  resize to new size.
 */
- (nullable UIImage *)cu_resize:(CGSize)newSize;

@end

NS_ASSUME_NONNULL_END
