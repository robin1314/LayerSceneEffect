//
//  AVBasicAnimate.h
//  LTStackView
//
//  Created by robin on 15/1/14.
//  Copyright (c) 2015年 ltebean. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

#define DEGREES_TO_RADIANS(d) (d * M_PI / 180)

#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define UIColorFromRGBAlpha(rgbValue, alphaValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:alphaValue]

typedef enum {
    
    KsetAVAllValue = 1,
    KsetAVToValue ,
    KsetAVfromValue ,
    
}AVSetBasciMode;

typedef enum {
    
    KAVSetBasciValueCGFloat = 1,
    KAVSetBasciValueCGPoint ,
    KAVSetBasciValueCATransform3D ,
    
}AVSetBasciValueType;

#define kAVBasicAniOpacity          @"opacity"

#define kAVBasicAniTransformScale    @"transform.scale"

#define kAVBasicAniPosition          @"position"

#define kAVBasicAniPath          @"path"

#define kAVBasicAniFrame          @"frame"

#define kAVBasicAniTransformRotation          @"transform.rotation"


#define kOpacityDuration           0.30

#define kBirdAciteDuration           0.35

#define kBirdOpenDuration           0.30

#define kSceneAniParamNot   0

#define kAniParamNotNil   nil

#define kSceneBTime(x)            (CACurrentMediaTime()+x)

#define kSceneLayerDuration        [[AVConfig currentConfig].sceneLayerDuration floatValue]

#define kSceneTransitDuration         [[AVConfig currentConfig].sceneTransitDuration floatValue]
