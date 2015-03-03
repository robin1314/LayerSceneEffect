//
//  ViewController.h
//  TestSceneEffect
//
//  Created by robin on 15/2/26.
//  Copyright (c) 2015年 robin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "testConstant.h"

#import "AVBasicRouteAnimate.h"

#import "GeometryGradientLayer.h"

static inline void dispatch_async_main_after(NSTimeInterval after, dispatch_block_t block) {
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(after * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), block);
}

#define AD_Z_DISTANCE 1000.0f

@interface ViewController : UIViewController
{
    CALayer *homeLayer;
    
}

@property (nonatomic, strong) CAShapeLayer *shapeLayer;

@end

