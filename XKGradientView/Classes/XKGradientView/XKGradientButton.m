//
//  XKGradientButton.m
//  TestDemo
//
//  Created by Nicholas on 2018/12/16.
//  Copyright © 2018 Nicholas. All rights reserved.
//

#import "XKGradientButton.h"
#import "CAGradientLayer+xkCategory.h"

@interface XKGradientButton ()

@property (nonatomic, strong) NSMutableArray *colors;

@end

@implementation XKGradientButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//替换layer
+ (Class)layerClass {
return CAGradientLayer.class;
}
- (CAGradientLayer *)gradientLayer {
return (CAGradientLayer *)self.layer;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initAction];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initAction];
    }
    return self;
}
- (void)initAction {
    
    self.direction = XKGradientDirectionLeftTopToRightBottom;
    
}

#pragma mark 设置开始颜色
- (void)setStartColor:(UIColor *)startColor {
    _startColor = startColor;
    
    id colorObject = (__bridge id)startColor.CGColor;
    
    if (self.colors.count == 1) {
        [self.colors insertObject:colorObject atIndex:0];
    }
    else if (self.colors.count == 2) {
        [self.colors replaceObjectAtIndex:0 withObject:colorObject];
    }
    else {
        [self.colors addObject:colorObject];
    }
    self.gradientLayer.colors = self.colors;
}
#pragma mark 设置结束颜色
- (void)setEndColor:(UIColor *)endColor {
    _endColor = endColor;
    
    id colorObject = (__bridge id)endColor.CGColor;
    if (self.colors.count == 1) {
        [self.colors insertObject:colorObject atIndex:1];
    }
    else if (self.colors.count == 2) {
        [self.colors replaceObjectAtIndex:1 withObject:colorObject];
    }
    else {
        [self.colors addObject:colorObject];
    }
    self.gradientLayer.colors = self.colors;
}
#pragma mark 设置方向
- (void)setDirection:(NSUInteger)direction {
    _direction = direction;
    
    self.gradientLayer.direction = direction;
}

#pragma mark 懒加载，记录颜色
- (NSMutableArray *)colors {
    if (!_colors) {
        _colors = [NSMutableArray arrayWithCapacity:2];
    }
    return _colors;
}

@end
