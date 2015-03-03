//
//  AVBasicRouteAnimate.m
//  LTStackView
//
//  Created by robin on 15/1/14.
//  Copyright (c) 2015年 ltebean. All rights reserved.
//

#import "AVBasicRouteAnimate.h"

@implementation AVBasicRouteAnimate

+(CAAnimationGroup *)groupAni:(CGFloat)duration withBeginTime:(CGFloat)beginTime aniArr:(NSArray *)aniArr
{
    CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
    
    animationGroup.duration= duration;
    
    animationGroup.beginTime= beginTime;
    
    animationGroup.removedOnCompletion=NO;
    
    animationGroup.fillMode=kCAFillModeBoth;
    
    animationGroup.autoreverses =NO;
    
    animationGroup.animations = aniArr;
    
    return animationGroup;
}

+(CABasicAnimation *)opacityOpen:(CGFloat)beginTime
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate opacityUnit:KsetAVToValue duration:kOpacityDuration withBeginTime:beginTime fromValue:0 toValue:1.0f];
    
    return basicAnimation;
}

+(CABasicAnimation *)opacityOpen:(CGFloat)duration withBeginTime:(CGFloat)beginTime
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate opacityUnit:KsetAVToValue duration:duration withBeginTime:beginTime fromValue:0 toValue:1.0f];
    
    return basicAnimation;
}

+(CABasicAnimation *)customCGFloat:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue propertyName:(NSString *)propertyName
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate customCGFloatUnit:KsetAVAllValue duration:duration withBeginTime:beginTime fromValue:fromValue toValue:toValue propertyName:propertyName];
    
    return basicAnimation;
}

+(CABasicAnimation *)customCGPoint:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGPoint)fromValue toValue:(CGPoint)toValue propertyName:(NSString *)propertyName
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate customCGPointUnit:KsetAVAllValue duration:duration withBeginTime:beginTime fromValue:fromValue toValue:toValue propertyName:propertyName];
    
    return basicAnimation;
}

+(CABasicAnimation *)customBasic:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(id)fromValue toValue:(id)toValue propertyName:(NSString *)propertyName
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate customBasicUnit:duration withBeginTime:beginTime fromValue:fromValue toValue:toValue propertyName:propertyName];
    
    return basicAnimation;
}

+(CAKeyframeAnimation *)customKeyframePath:(CGFloat)duration withBeginTime:(CGFloat)beginTime propertyName:(NSString *)propertyName path:(CGMutablePathRef)path
{
    CAKeyframeAnimation *basicAnimation = [AVBasicBottomAnimate customKeyframeUnit:duration withBeginTime:beginTime propertyName:propertyName path:path];
    
    return basicAnimation;
}

+(CAKeyframeAnimation *)customKeyframe:(CGFloat)duration withBeginTime:(CGFloat)beginTime propertyName:(NSString *)propertyName values:(NSArray *)values keyTimes:(NSArray *)keyTimes
{
    CAKeyframeAnimation *basicAnimation = [AVBasicBottomAnimate customKeyframeUnit:duration withBeginTime:beginTime propertyName:propertyName values:values keyTimes:keyTimes];
    
    return basicAnimation;
}

+(CABasicAnimation *)opacityClose:(CGFloat)beginTime
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate opacityUnit:KsetAVToValue duration:kOpacityDuration withBeginTime:beginTime fromValue:1.0 toValue:0.0f];
    
    return basicAnimation;
}

+(CABasicAnimation *)opacityClose:(CGFloat)duration withBeginTime:(CGFloat)beginTime
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate opacityUnit:KsetAVToValue duration:duration withBeginTime:beginTime fromValue:1.0 toValue:0.0f];
    
    return basicAnimation;
}

+(CABasicAnimation *)opacityFromTo:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate opacityUnit:KsetAVToValue duration:kOpacityDuration withBeginTime:beginTime fromValue:fromValue toValue:toValue];
    
    return basicAnimation;
}


+(CABasicAnimation *)moveXYCenterTo:(CGFloat)duration withBeginTime:(CGFloat)beginTime toValue:(CGPoint)toValue
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate moveXYCenterUnit:KsetAVToValue duration:duration withBeginTime:beginTime fromValue:CGPointMake(0, 0) toValue:toValue];
    
    return basicAnimation;
}

+(CABasicAnimation *)moveXYCenterTo:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGPoint)fromValue toValue:(CGPoint)toValue
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate moveXYCenterUnit:KsetAVAllValue duration:duration withBeginTime:beginTime fromValue:fromValue toValue:toValue];
    
    return basicAnimation;

}

+(CABasicAnimation *)scaleTo:(CGFloat)duration withBeginTime:(CGFloat)beginTime toValue:(CGFloat)toValue
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate scaleXYUnit:KsetAVToValue duration:duration withBeginTime:beginTime fromValue:0 toValue:toValue];
    
    return basicAnimation;
}

+(CABasicAnimation *)rotationX:(CGFloat)duration withBeginTime:(CGFloat)beginTime toValue:(CGFloat)toValue
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate rotationUnit:KsetAVToValue duration:duration withBeginTime:beginTime fromValue:CATransform3DIdentity toValue:CATransform3DMakeRotation(DEGREES_TO_RADIANS(toValue) ,1 ,0 ,0)];
    
    return basicAnimation;
}

+(CABasicAnimation *)rotationY:(CGFloat)duration withBeginTime:(CGFloat)beginTime toValue:(CGFloat)toValue
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate rotationUnit:KsetAVToValue duration:duration withBeginTime:beginTime fromValue:CATransform3DIdentity toValue:CATransform3DMakeRotation(DEGREES_TO_RADIANS(toValue) ,0 ,1 ,0)];
    
    return basicAnimation;
}

+(CABasicAnimation *)rotationZ:(CGFloat)duration withBeginTime:(CGFloat)beginTime toValue:(CGFloat)toValue
{
    CABasicAnimation *basicAnimation = [AVBasicBottomAnimate rotationUnit:KsetAVToValue duration:duration withBeginTime:beginTime fromValue:CATransform3DIdentity toValue:CATransform3DMakeRotation(DEGREES_TO_RADIANS(toValue) ,0 ,0 ,1)];
    
    return basicAnimation;
}

@end
