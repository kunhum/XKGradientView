//
//  CAGradientLayer+xkCategory.h
//  TestDemo
//
//  Created by Nicholas on 2018/12/16.
//  Copyright © 2018 Nicholas. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, XKGradientDirection) {
    XKGradientDirectionLeftToRight = 0,      //左到右
    XKGradientDirectionTopToBottom,          //上到下
    XKGradientDirectionLeftTopToRightBottom, //左上到右下
    XKGradientDirectionLeftBottomToRightTop  //左下到右上
};

@interface CAGradientLayer (xkCategory)

@property (nonatomic, assign) XKGradientDirection direction;

@end

NS_ASSUME_NONNULL_END
