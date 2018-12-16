//
//  XKGradientButton.h
//  TestDemo
//
//  Created by Nicholas on 2018/12/16.
//  Copyright © 2018 Nicholas. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
/* 提供两个颜色的渐变 */
@interface XKGradientButton : UIButton

@property (nonatomic, strong) CAGradientLayer *gradientLayer;
///开始的颜色
@property (nonatomic, strong) IBInspectable UIColor *startColor;
///结束的颜色
@property (nonatomic, strong) IBInspectable UIColor *endColor;
/**
 范围0-3, 默认为2，左上到右下
 XKGradientDirectionLeftToRight = 0,      //左到右
 XKGradientDirectionTopToBottom,          //上到下
 XKGradientDirectionLeftTopToRightBottom, //左上到右下
 XKGradientDirectionLeftBottomToRightTop  //左下到右上
 */
@property (nonatomic, assign) IBInspectable NSUInteger direction;

@end

NS_ASSUME_NONNULL_END
