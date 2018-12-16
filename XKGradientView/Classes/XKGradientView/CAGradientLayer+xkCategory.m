//
//  CAGradientLayer+xkCategory.m
//  TestDemo
//
//  Created by Nicholas on 2018/12/16.
//  Copyright © 2018 Nicholas. All rights reserved.
//

#import "CAGradientLayer+xkCategory.h"
#import <objc/runtime.h>

@implementation CAGradientLayer (xkCategory)

- (XKGradientDirection)direction {
    return [objc_getAssociatedObject(self, @"direction") integerValue];
}
- (void)setDirection:(XKGradientDirection)direction {
    
    if (direction > 3) {
        direction = 3;
    }
    if (direction < 0) {
        direction = 0;
    }
    
    objc_setAssociatedObject(self, @"direction", @(direction), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    switch (direction) {
        case XKGradientDirectionLeftToRight:
        {
            self.startPoint = CGPointMake(0, 0);
            self.endPoint   = CGPointMake(1, 0);
        }
            break;
        case XKGradientDirectionTopToBottom:
        {
            self.startPoint = CGPointMake(0.5, 0);
            self.endPoint   = CGPointMake(0.5, 1);
        }
            break;
        case XKGradientDirectionLeftTopToRightBottom:
        {
            self.startPoint = CGPointMake(0, 0);
            self.endPoint   = CGPointMake(1, 1);
        }
            break;
        case XKGradientDirectionLeftBottomToRightTop:
        {
            self.startPoint = CGPointMake(0, 1);
            self.endPoint   = CGPointMake(1, 0);
        }
            break;
            
        default:
            break;
    }
    
}


@end
