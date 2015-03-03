//
//  GeometryGradientLayer.m
//  TestSceneEffect
//
//  Created by robin on 15/2/27.
//  Copyright (c) 2015年 robin. All rights reserved.
//

#import "GeometryGradientLayer.h"
#import <UIKit/UIKit.h>

@implementation GeometryGradientLayer

- (id)initWithFrame:(CGRect)frame
{
    self = [self init];
    if (self) {
        
        //self.opacity =0.0f;
        
        self.frame = frame;
        
        //[self addSublayer: self.shapeLayer];
        
        [self setMask: self.shapeLayer];
        
    }
    return self;
}

-(CAShapeLayer *)shapeLayer
{
    if (_shapeLayer ==nil) {
        
        _shapeLayer = [[CAShapeLayer alloc] init];
        
        _shapeLayer.frame = self.bounds;
        
        _shapeLayer.fillColor = [UIColor whiteColor].CGColor;
        
    }
    
    return _shapeLayer;
}

-(void)setColorBarDirection:(GeometryGradientColorBarMode)colorBarDirection
{
        
    _colorBarDirection = colorBarDirection;
    
    switch (_colorBarDirection) {
        case radientColorBarLeftToRight:
        {
            self.startPoint  = CGPointMake(0.0, 0.5);
            self.endPoint = CGPointMake(1.0, 0.5);

            break;
        }
            
        case radientColorBarRightToLeft:
        {
            self.endPoint  = CGPointMake(0.0, 0.5);
            self.startPoint = CGPointMake(1.0, 0.5);
            break;
        }
            
        case radientColorBarTopToBottom:
        {
            self.startPoint = CGPointMake(0.5, 0.0);
            self.endPoint = CGPointMake(0.5, 1.0);
            break;
        }
            
        case radientColorBarBottomToTop:
        {
            self.endPoint = CGPointMake(0.5, 0.0);
            self.startPoint = CGPointMake(0.5, 1.0);
            break;
        }
            
        case radientColorBarLeftTopToRightBottom:
        {
            self.startPoint = CGPointMake(0.0, 0.0);
            self.endPoint = CGPointMake(1.0, 1.0);
            break;
        }
            
        case radientColorBarRightBottomToLeftTop:
        {
            self.endPoint = CGPointMake(0.0, 0.0);
            self.startPoint = CGPointMake(1.0, 1.0);
            break;
        }
            
        default:
            break;
    }

}

@end
