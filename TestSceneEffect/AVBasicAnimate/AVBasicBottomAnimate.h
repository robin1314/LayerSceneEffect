//
//  AVBasicBottomAnimate.h
//  LTStackView
//
//  Created by robin on 15/1/14.
//  Copyright (c) 2015年 ltebean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AVBasicAnimate.h"

@interface AVBasicBottomAnimate : NSObject
{
    
}

+(CABasicAnimation *)opacityUnit:(AVSetBasciMode)mode duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGFloat)fromValue   toValue:(CGFloat)toValue;

+(CABasicAnimation *)scaleXYUnit:(AVSetBasciMode)mode duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue;

+(CABasicAnimation *)moveXYCenterUnit:(AVSetBasciMode)mode duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGPoint)fromValue toValue:(CGPoint)toValue;

+(CABasicAnimation *)rotationUnit:(AVSetBasciMode)mode duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CATransform3D)fromValue toValue:(CATransform3D)toValue;


/*********      custom       ********/
+(CABasicAnimation *)customCGFloatUnit:(AVSetBasciMode)mode  duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue propertyName:(NSString *)propertyName;

+(CABasicAnimation *)customBasicUnit:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(id)fromValue toValue:(id)toValue propertyName:(NSString *)propertyName;

+(CABasicAnimation *)customCGPointUnit:(AVSetBasciMode)mode  duration:(CGFloat)duration withBeginTime:(CGFloat)beginTime fromValue:(CGPoint)fromValue toValue:(CGPoint)toValue propertyName:(NSString *)propertyName;

+(CAKeyframeAnimation *)customKeyframeUnit:(CGFloat)duration withBeginTime:(CGFloat)beginTime propertyName:(NSString *)propertyName path:(CGMutablePathRef)path;

+(CAKeyframeAnimation *)customKeyframeUnit:(CGFloat)duration withBeginTime:(CGFloat)beginTime propertyName:(NSString *)propertyName values:(NSArray *)values keyTimes:(NSArray *)keyTimes;



@end
