//
//  testConstant.h
//  TestSceneEffect
//
//  Created by robin on 15/2/26.
//  Copyright (c) 2015年 robin. All rights reserved.
//


#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


#define UIColorFromHexAlpha(hexValue, a) [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:a]



#define kDurationFadeIn     0.8

#define DEGREES_TO_RADIANS(d) (d * M_PI / 180)