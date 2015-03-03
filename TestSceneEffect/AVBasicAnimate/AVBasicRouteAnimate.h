//
//  AVBasicRouteAnimate.h
//  LTStackView
//
//  Created by robin on 15/1/14.
//  Copyright (c) 2015年 ltebean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AVBasicBottomAnimate.h"
#import "AVBasicAnimate.h"

@interface AVBasicRouteAnimate : NSObject

+(CAAnimationGroup *)groupAni:(CGFloat)duration withBeginTime:(CGFloat)beginTime aniArr:(NSArray *)aniArr;

+(CABasicAnimation *)opacityOpen:(CGFloat)beginTime;

+(CABasicAnimation *)opacityOpen:(CGFloat)duration withBeginTime:(CGFloat)beginTime;

+(CABasicAnimation *)opacityClose:(CGFloat)beginTime;

+(CABasicAnimation *)opacityClose:(CGFloat)duration withBeginTime:(CGFloat)beginTime;

+(CABasicAnimation *)opacityFromTo:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue;

+(CABasicAnimation *)moveXYCenterTo:(CGFloat)duration withBeginTime:(CGFloat)beginTime toValue:(CGPoint)toValue;

+(CABasicAnimation *)moveXYCenterTo:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGPoint)fromValue   toValue:(CGPoint)toValue;

+(CABasicAnimation *)scaleTo:(CGFloat)duration withBeginTime:(CGFloat)beginTime toValue:(CGFloat)toValue;

+(CABasicAnimation *)rotationX:(CGFloat)duration withBeginTime:(CGFloat)beginTime toValue:(CGFloat)toValue;

+(CABasicAnimation *)rotationY:(CGFloat)duration withBeginTime:(CGFloat)beginTime toValue:(CGFloat)toValue;

+(CABasicAnimation *)rotationZ:(CGFloat)duration withBeginTime:(CGFloat)beginTime toValue:(CGFloat)toValue;

+(CABasicAnimation *)customCGFloat:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue propertyName:(NSString *)propertyName;

+(CABasicAnimation *)customBasic:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(id)fromValue toValue:(id)toValue propertyName:(NSString *)propertyName;

+(CABasicAnimation *)customCGPoint:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGPoint)fromValue toValue:(CGPoint)toValue propertyName:(NSString *)propertyName;

+(CAKeyframeAnimation *)customKeyframePath:(CGFloat)duration withBeginTime:(CGFloat)beginTime propertyName:(NSString *)propertyName path:(CGMutablePathRef)path;

+(CAKeyframeAnimation *)customKeyframe:(CGFloat)duration withBeginTime:(CGFloat)beginTime propertyName:(NSString *)propertyName values:(NSArray *)values keyTimes:(NSArray *)keyTimes;

@end
