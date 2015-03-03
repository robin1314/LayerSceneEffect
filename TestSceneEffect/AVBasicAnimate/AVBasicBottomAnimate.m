//
//  AVBasicBottomAnimate.m
//  LTStackView
//
//  Created by robin on 15/1/14.
//  Copyright (c) 2015年 ltebean. All rights reserved.
//

#import "AVBasicBottomAnimate.h"

@implementation AVBasicBottomAnimate

+(CABasicAnimation *)opacityUnit:(AVSetBasciMode)mode duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue
{
    CABasicAnimation *basicAnimation=[CABasicAnimation animationWithKeyPath:@"opacity"];
    basicAnimation.removedOnCompletion=NO;
    basicAnimation.fillMode=kCAFillModeBoth;
    basicAnimation.autoreverses=NO;
    switch (mode) {
        case KsetAVAllValue:
        {
            basicAnimation.fromValue = @(fromValue);
            basicAnimation.toValue = @(toValue);
            break;
        }
        case KsetAVfromValue:
        {
            basicAnimation.fromValue = @(fromValue);
            break;
        }
        case KsetAVToValue:
        {
           basicAnimation.toValue = @(toValue);
            break;
        }
            
        default:
            break;
    }
    
    if (beginTime != kSceneAniParamNot) {
        basicAnimation.beginTime = beginTime;
    }

    basicAnimation.duration = duration;
    
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    return  basicAnimation;
}

+(CABasicAnimation *)customCGFloatUnit:(AVSetBasciMode)mode  duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue propertyName:(NSString *)propertyName
{
    CABasicAnimation *basicAnimation=[CABasicAnimation animationWithKeyPath:propertyName];
    basicAnimation.removedOnCompletion=NO;
    basicAnimation.fillMode=kCAFillModeBoth;
    basicAnimation.autoreverses=NO;
    switch (mode) {
        case KsetAVAllValue:
        {
            basicAnimation.fromValue = @(fromValue);
            basicAnimation.toValue = @(toValue);
            break;
        }
        case KsetAVfromValue:
        {
            basicAnimation.fromValue = @(fromValue);
            break;
        }
        case KsetAVToValue:
        {
            basicAnimation.toValue = @(toValue);
            break;
        }
            
        default:
            break;
    }
    
    if (beginTime != kSceneAniParamNot) {
        basicAnimation.beginTime = beginTime;
    }
    basicAnimation.duration = duration;
    
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    return  basicAnimation;
}

+(CABasicAnimation *)customBasicUnit:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(id)fromValue toValue:(id)toValue propertyName:(NSString *)propertyName
{
    
    CABasicAnimation *basicAnimation=[CABasicAnimation animationWithKeyPath:propertyName];
    basicAnimation.removedOnCompletion=NO;
    basicAnimation.fillMode=kCAFillModeBoth;
    basicAnimation.autoreverses=NO;
    
    if (fromValue !=kAniParamNotNil) {
        basicAnimation.fromValue = fromValue;
    }
    
    if (toValue !=kAniParamNotNil) {
        basicAnimation.toValue = toValue;
    }
    
    if (beginTime != kSceneAniParamNot) {
        basicAnimation.beginTime = beginTime;
    }
    basicAnimation.duration = duration;
    
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    return  basicAnimation;
}

+(CABasicAnimation *)customCGPointUnit:(AVSetBasciMode)mode  duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGPoint)fromValue toValue:(CGPoint)toValue propertyName:(NSString *)propertyName
{
    NSValue *fromSize = [NSValue valueWithCGPoint: fromValue];
    NSValue *toSize = [NSValue valueWithCGPoint:toValue];
    
    CABasicAnimation *basicAnimation=[CABasicAnimation animationWithKeyPath:propertyName];
    basicAnimation.removedOnCompletion=NO;
    basicAnimation.fillMode=kCAFillModeBoth;
    basicAnimation.autoreverses=NO;
    switch (mode) {
        case KsetAVAllValue:
        {
            basicAnimation.fromValue = fromSize;
            basicAnimation.toValue = toSize;
            break;
        }
        case KsetAVfromValue:
        {
            basicAnimation.fromValue = fromSize;
            break;
        }
        case KsetAVToValue:
        {
            basicAnimation.toValue = toSize;
            break;
        }
            
        default:
            break;
    }
    
    if (beginTime != kSceneAniParamNot) {
        basicAnimation.beginTime = beginTime;
    }
    basicAnimation.duration = duration;
    
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    return  basicAnimation;
}

+(CAKeyframeAnimation *)customKeyframeUnit:(CGFloat)duration withBeginTime:(CGFloat)beginTime propertyName:(NSString *)propertyName path:(CGMutablePathRef)path
{
    
    CAKeyframeAnimation *basicAnimation=[CAKeyframeAnimation animationWithKeyPath:propertyName];
    basicAnimation.path=path;
    basicAnimation.removedOnCompletion=NO;
    basicAnimation.fillMode=kCAFillModeBoth;
    basicAnimation.autoreverses=NO;
    
    if (beginTime != kSceneAniParamNot) {
        basicAnimation.beginTime = beginTime;
    }
    basicAnimation.duration = duration;
    
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    
    return  basicAnimation;
}

+(CAKeyframeAnimation *)customKeyframeUnit:(CGFloat)duration withBeginTime:(CGFloat)beginTime propertyName:(NSString *)propertyName values:(NSArray *)values keyTimes:(NSArray *)keyTimes
{
    
    CAKeyframeAnimation *basicAnimation=[CAKeyframeAnimation animationWithKeyPath:propertyName];
    
    basicAnimation.removedOnCompletion=NO;
    basicAnimation.fillMode=kCAFillModeBoth;
    basicAnimation.autoreverses=NO;
    
    if (beginTime != kSceneAniParamNot) {
        basicAnimation.beginTime = beginTime;
    }
    basicAnimation.duration = duration;
    
    basicAnimation.values=values;
    
    if (keyTimes != kSceneAniParamNot) {
        basicAnimation.keyTimes = keyTimes;
    }
    
    basicAnimation.calculationMode = kCAAnimationLinear;
    
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    return  basicAnimation;
}

+(CABasicAnimation *)scaleXYUnit:(AVSetBasciMode)mode duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue;
{
    NSValue *fromSize = [NSNumber numberWithFloat:fromValue];
    NSValue *toSize = [NSNumber numberWithFloat:toValue];
    
    CABasicAnimation *basicAnimation=[CABasicAnimation animationWithKeyPath:@"transform.scale"];
    basicAnimation.removedOnCompletion=NO;
    basicAnimation.fillMode=kCAFillModeBoth;
    basicAnimation.autoreverses=NO;
    switch (mode) {
        case KsetAVAllValue:
        {
            basicAnimation.fromValue = fromSize;
            basicAnimation.toValue = toSize;
            break;
        }
        case KsetAVfromValue:
        {
            basicAnimation.fromValue = @(fromValue);
            break;
        }
        case KsetAVToValue:
        {
            basicAnimation.toValue = @(toValue);
            break;
        }
            
        default:
            break;
    }
    
    if (beginTime != kSceneAniParamNot) {
        basicAnimation.beginTime = beginTime;
    }
    basicAnimation.duration = duration;
    
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    return  basicAnimation;
}

+(CABasicAnimation *)moveXYCenterUnit:(AVSetBasciMode)mode duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGPoint)fromValue toValue:(CGPoint)toValue
{
    
    NSValue *fromSize = [NSValue valueWithCGPoint: fromValue];
    NSValue *toSize = [NSValue valueWithCGPoint:toValue];
    
    CABasicAnimation *basicAnimation=[CABasicAnimation animationWithKeyPath:@"position"];
    basicAnimation.removedOnCompletion=NO;
    basicAnimation.fillMode=kCAFillModeBoth;
    basicAnimation.autoreverses=NO;
    switch (mode) {
        case KsetAVAllValue:
        {
            basicAnimation.fromValue = fromSize;
            basicAnimation.toValue = toSize;
            break;
        }
        case KsetAVfromValue:
        {
            basicAnimation.fromValue = fromSize;
            break;
        }
        case KsetAVToValue:
        {
            basicAnimation.toValue = toSize;
            break;
        }
            
        default:
            break;
    }
    
    if (beginTime != kSceneAniParamNot) {
        basicAnimation.beginTime = beginTime;
    }
    basicAnimation.duration = duration;
    
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    return  basicAnimation;
}

+(CABasicAnimation *)rotationUnit:(AVSetBasciMode)mode duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CATransform3D)fromValue toValue:(CATransform3D)toValue
{
    
    NSValue *fromSize = [NSValue valueWithCATransform3D: fromValue];
    NSValue *toSize = [NSValue valueWithCATransform3D: toValue];
    
    CABasicAnimation *basicAnimation=[CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    basicAnimation.removedOnCompletion=NO;
    basicAnimation.fillMode=kCAFillModeBoth;
    basicAnimation.autoreverses=NO;
    switch (mode) {
        case KsetAVAllValue:
        {
            basicAnimation.fromValue = fromSize;
            basicAnimation.toValue = toSize;
            break;
        }
        case KsetAVfromValue:
        {
            basicAnimation.fromValue = fromSize;
            break;
        }
        case KsetAVToValue:
        {
            basicAnimation.toValue = toSize;
            break;
        }
            
        default:
            break;
    }
    
    if (beginTime != kSceneAniParamNot) {
        basicAnimation.beginTime = beginTime;
    }
    basicAnimation.duration = duration;
    
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    return  basicAnimation;
}

@end
