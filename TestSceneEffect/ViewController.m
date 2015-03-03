//
//  ViewController.m
//  TestSceneEffect
//
//  Created by robin on 15/2/26.
//  Copyright iMMcque (c) 2015年 robin. All rights reserved.
//

#import "ViewController.h"

#define startXOffset     100

#define twoShaperlength     60

#define threeShaperlength     50

#define colorBarShaperlength     200

#define fourShaperlength     (320+startXOffset+100)

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    homeLayer = [CALayer layer];
    
    homeLayer.frame = CGRectMake(0, 30, self.view.frame.size.width, 240);
    
    [self.view.layer addSublayer: homeLayer];
    
    float zDistance = AD_Z_DISTANCE;
    CATransform3D sublayerTransform = CATransform3DIdentity;
    sublayerTransform.m34 = 1.0 / -zDistance;
    homeLayer.sublayerTransform = sublayerTransform;
    
    [self slideARCColorCloth];
    
    //[self testMask];
}

-(void)testMask
{
    CALayer *currentLayer = [CALayer layer];
    
    currentLayer.frame = homeLayer.bounds;
    
    currentLayer.contents = (id)[UIImage imageNamed:@"camra2.jpg"].CGImage;
    
    [homeLayer addSublayer: currentLayer];
    
    CALayer *nextLayer = [CALayer layer];
    
    nextLayer.frame = homeLayer.bounds;
    
    nextLayer.contents = (id)[UIImage imageNamed:@"invite2.jpg"].CGImage;
    
    [homeLayer addSublayer: nextLayer];

    
    CAShapeLayer  *maskLayer = [CAShapeLayer layer];
    
    CGFloat arcSidelength =100;
    
    maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    
    maskLayer.frame = CGRectMake(100, 100, arcSidelength, arcSidelength);
    
    [nextLayer setMask: maskLayer];
    
    //[homeLayer addSublayer: maskLayer];
}

-(void)colorClop
{
    CGFloat duration = 2.0;
    
    CGFloat beginTime = 0;
    
    CALayer *currentLayer = [CALayer layer];
    
    currentLayer.frame = homeLayer.bounds;
    
    currentLayer.contents = (id)[UIImage imageNamed:@"camra2.jpg"].CGImage;
    
    [homeLayer addSublayer: currentLayer];
    
    CAShapeLayer  *maskLayer = [CAShapeLayer layer];
    
    //maskLayer.backgroundColor = [UIColor redColor].CGColor;
    
    CGFloat arcSidelength = currentLayer.frame.size.width*2;
    
    // arcSidelength = 100;
    
    maskLayer.frame = CGRectMake(0, 0, arcSidelength, arcSidelength);
    
    maskLayer.fillColor = [UIColor whiteColor].CGColor;
    
    UIBezierPath *arcPath = [UIBezierPath bezierPath];
    // Set the starting point of the shape.
    [arcPath moveToPoint:CGPointMake(0, 0)];
    // Draw the lines
    [arcPath addLineToPoint:CGPointMake(arcSidelength ,0)];
    [arcPath addLineToPoint:CGPointMake(arcSidelength, arcSidelength)];
    [arcPath addLineToPoint:CGPointMake(0,0)];
    [arcPath closePath];
    
    maskLayer.path = arcPath.CGPath;
    
    maskLayer.position = CGPointMake(currentLayer.frame.size.width, 0);
    
    CGPoint arcToCenter = CGPointMake(0, currentLayer.frame.size.height);
    
    CABasicAnimation *moveMaskAni = [AVBasicRouteAnimate moveXYCenterTo:duration-0.2 withBeginTime:beginTime toValue: arcToCenter];
    
    // maske effect
    CAGradientLayer  *maskEffectLayer = [CAGradientLayer layer];
    
    CGFloat colorSidelength = currentLayer.frame.size.width*1.6;
    
    maskEffectLayer.frame =CGRectMake(0, 0,colorSidelength,  currentLayer.frame.size.height*1.7);
    
    // 设置颜色
    maskEffectLayer.colors = @[(id)[[UIColor brownColor] colorWithAlphaComponent:0.4].CGColor,
                               (id)UIColorFromRGB(0xb31921).CGColor,
                               (id)UIColorFromRGB(0xb31921).CGColor,
                               (id)UIColorFromRGB(0xd67a51).CGColor,
                               (id)UIColorFromRGB(0xd67a51).CGColor,
                               (id)UIColorFromRGB(0x664e66).CGColor,
                               (id)UIColorFromRGB(0x664e66).CGColor,
                               ];
    
    maskEffectLayer.locations = @[[NSNumber numberWithFloat:0.30f],
                                  [NSNumber numberWithFloat:0.31f],
                                  
                                  [NSNumber numberWithFloat:0.54f],
                                  [NSNumber numberWithFloat:0.55f],
                                  
                                  [NSNumber numberWithFloat:0.85f],
                                  [NSNumber numberWithFloat:0.86f],
                                  
                                  ];
    
    maskEffectLayer.anchorPoint = CGPointMake(0.5, 1.0);
    
    CATransform3D rotate1 = CATransform3DMakeRotation(M_PI_4, 0, 0, 1);  // Rotate 45.z
    
    maskEffectLayer.transform = rotate1;
    
    maskEffectLayer.position = CGPointMake(currentLayer.frame.size.width, 0);
    
    CGPoint nextPosition = CGPointMake(-(maskEffectLayer.frame.size.height/2), currentLayer.frame.size.height+30);
    
    CABasicAnimation *moveAni = [AVBasicRouteAnimate moveXYCenterTo:duration withBeginTime:beginTime toValue: nextPosition];
    
//    //  dispatch_async_main_after(kCATransactionBTime(beginTime), ^{
//    [currentLayer.superlayer addSublayer: nextLayer];
//    
//    [maskLayer addAnimation: moveMaskAni forKey:@"moveAni"];
//    
//    //[currentLayer.superlayer addSublayer: maskLayer];
//    [nextLayer setMask:maskLayer];
//    
//    [maskEffectLayer addAnimation: moveAni forKey:@"moveAni"];
//    [currentLayer.superlayer addSublayer: maskEffectLayer];
}

-(CGPathRef) geometryStroke:(CALayer *)currentLayer upSlideLength: (CGFloat)slideLength
{
    UIBezierPath *startPath = [UIBezierPath bezierPath];
    
    CGFloat upStartLength = startXOffset;
    
    CGFloat upSlideLength = slideLength;
    
    // Set the starting point of the shape.
    [startPath moveToPoint:CGPointMake(upStartLength, 0)];
    
    [startPath addLineToPoint:CGPointMake(upStartLength+upSlideLength ,0)];

    [startPath addLineToPoint:CGPointMake(upSlideLength, currentLayer.frame.size.height/2)];
    
    [startPath addLineToPoint:CGPointMake(upStartLength+upSlideLength, currentLayer.frame.size.height)];
    
    [startPath addLineToPoint:CGPointMake(upStartLength, currentLayer.frame.size.height)];
    
    [startPath addLineToPoint:CGPointMake(0, currentLayer.frame.size.height/2)];
    
    [startPath closePath];
    
    return  startPath.CGPath;

}

-(CGPathRef) geometryColorBarStroke:(CALayer *)currentLayer upSlideLength: (CGFloat)slideLength
{
    UIBezierPath *startPath = [UIBezierPath bezierPath];
    
    CGFloat upStartLength = startXOffset;
    
    CGFloat upSlideLength = slideLength;
    
    // Set the starting point of the shape.
    [startPath moveToPoint:CGPointMake(upStartLength, 0)];
    
    [startPath addLineToPoint:CGPointMake(upStartLength+upSlideLength ,0)];
    
    [startPath addLineToPoint:CGPointMake(upStartLength+upSlideLength , currentLayer.frame.size.height)];
    
    [startPath addLineToPoint:CGPointMake(upStartLength, currentLayer.frame.size.height)];
    
    [startPath addLineToPoint:CGPointMake(0, currentLayer.frame.size.height/2)];
    
    [startPath closePath];
    
    return  startPath.CGPath;
    
}

-(void)slideARCColorCloth
{
    CALayer *currentLayer = [CALayer layer];
    
    currentLayer.frame = homeLayer.bounds;
    
    currentLayer.contents = (id)[UIImage imageNamed:@"camra2.jpg"].CGImage;
    
    [homeLayer addSublayer: currentLayer];
    
    
    CALayer *nextLayer = [CALayer layer];
    
    nextLayer.frame = homeLayer.bounds;
    
    nextLayer.contents = (id)[UIImage imageNamed:@"invite2.jpg"].CGImage;
    
    [currentLayer.superlayer addSublayer: nextLayer];
    
    CALayer *maskLayer = [CALayer layer];
    
    maskLayer.frame = homeLayer.bounds;
    
    maskLayer.anchorPoint = CGPointMake(0.0f, 0.5f);
    
    maskLayer.position=CGPointMake(currentLayer.frame.size.width, currentLayer.frame.size.height/2);
    
    maskLayer.backgroundColor  =[UIColor clearColor].CGColor;
    
    [nextLayer setMask: maskLayer];
    
    
    CAShapeLayer *geometryLayer1 = [CAShapeLayer layer];
    
    geometryLayer1.frame = CGRectMake(0, 0, startXOffset+twoShaperlength, currentLayer.frame.size.height);
    
    geometryLayer1.path = [self geometryStroke:currentLayer upSlideLength:twoShaperlength];
    
    geometryLayer1.fillColor = [[UIColor brownColor] colorWithAlphaComponent:0.5].CGColor;
    
    [currentLayer.superlayer addSublayer: geometryLayer1];
    
    geometryLayer1.anchorPoint = CGPointMake(0.0f, 0.5f);
    
    geometryLayer1.position = maskLayer.position;
    
    
    CAShapeLayer *geometryLayer2 = [CAShapeLayer layer];
    
    geometryLayer2.frame =  CGRectMake(0, 0, startXOffset+twoShaperlength, currentLayer.frame.size.height);
    
    geometryLayer2.path = [self geometryStroke:currentLayer upSlideLength:twoShaperlength];
    
    geometryLayer2.fillColor = [UIColor whiteColor].CGColor;
    
    [maskLayer addSublayer: geometryLayer2];
    
    geometryLayer2.anchorPoint = CGPointMake(0.0f, 0.5f);
    
    geometryLayer2.position = CGPointMake(twoShaperlength, currentLayer.frame.size.height/2);
    
    
    GeometryGradientLayer *geometryLayer3 = [[GeometryGradientLayer alloc] initWithFrame: CGRectMake(0, 0, startXOffset+colorBarShaperlength, currentLayer.frame.size.height)];
    
    geometryLayer3.shapeLayer.path = [self geometryColorBarStroke:currentLayer upSlideLength:colorBarShaperlength];
    
    geometryLayer3.colorBarDirection = radientColorBarLeftToRight;
    
    geometryLayer3.colors = @[ (id)UIColorFromRGBAlpha(0xb45921, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0xb31921, 0.8f).CGColor,
                               (id)UIColorFromRGBAlpha(0xb31921, 0.8f).CGColor,
                               (id)UIColorFromRGBAlpha(0xd67a51, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0xd67a51, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0x664e66, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0x664e66, 1.0f).CGColor,
                               
                               (id)UIColorFromRGBAlpha(0x4f8c91, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0x4f8c91, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0xdc642f, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0xdc642f, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0x4b6a7e, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0x4b6a7e, 1.0f).CGColor,
                               
                               (id)[[UIColor brownColor] colorWithAlphaComponent:1.0].CGColor,
                               (id)[[UIColor brownColor] colorWithAlphaComponent:1.0].CGColor,
                               (id)UIColorFromRGBAlpha(0x4b6a4e, 0.9f).CGColor,
                               (id)UIColorFromRGBAlpha(0x4b6a4e, 0.9f).CGColor,
                               (id)[[UIColor grayColor] colorWithAlphaComponent:0.9].CGColor,
                               (id)[[UIColor grayColor] colorWithAlphaComponent:0.9].CGColor,
                               
                               (id)UIColorFromRGBAlpha(0x4f8c91, 0.8f).CGColor,
                               (id)UIColorFromRGBAlpha(0x4f8c91, 0.9f).CGColor,
                               (id)UIColorFromRGBAlpha(0xdc642f, 0.9f).CGColor,
                               (id)UIColorFromRGBAlpha(0xdc642f, 0.8f).CGColor,
                               (id)UIColorFromRGBAlpha(0x4b6a7e, 0.87f).CGColor,
                               (id)UIColorFromRGBAlpha(0x4b6a7e, 0.87f).CGColor,
                               
                               (id)UIColorFromRGBAlpha(0xb31921, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0xb31921, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0xd67a51, 0.9f).CGColor,
                               (id)UIColorFromRGBAlpha(0xd67a51, 0.9f).CGColor,
                               (id)UIColorFromRGBAlpha(0x664e66, 1.0f).CGColor,
                               (id)UIColorFromRGBAlpha(0x664e66, 1.0f).CGColor,
                               
                               ];
    
    NSMutableArray *locations =[[NSMutableArray alloc] init];
    for (NSInteger index = 1; index < 17; index++) {
        
        NSNumber *item1 = [NSNumber numberWithFloat:0.01f*5*index];
        
        NSNumber *item2 = [NSNumber numberWithFloat:0.01f*5*index];
        
        [locations addObject: item1]; [locations addObject:item2];
    }
    
    geometryLayer3.locations = locations;
    
    [geometryLayer1 addSublayer: geometryLayer3];
    
    geometryLayer3.anchorPoint = CGPointMake(0.0f, 0.5);
    
    geometryLayer3.position = CGPointMake(2*twoShaperlength, currentLayer.position.y);
    
    
    // continute color bar
    NSArray *colorList = @[
                           (id)[[UIColor blackColor] colorWithAlphaComponent:0.3].CGColor,
                           (id)[[UIColor orangeColor] colorWithAlphaComponent:0.3].CGColor,
                           (id)[[UIColor redColor] colorWithAlphaComponent:0.2].CGColor,
                           (id)[[UIColor blackColor] colorWithAlphaComponent:0.4].CGColor,
                           (id)[[UIColor redColor] colorWithAlphaComponent:0.4].CGColor,
                           ];
    
    
    for (NSInteger index=0; index< 3; index++) {
        
        CAShapeLayer *geometrySubLayer = [CAShapeLayer layer];
        
        geometrySubLayer.frame = CGRectMake(0, 0, startXOffset+threeShaperlength, currentLayer.frame.size.height);
        
        CGFloat length = threeShaperlength;
        
        if (index==2) {
            length = threeShaperlength+30;
        }
        
        geometrySubLayer.path = [self geometryStroke:currentLayer upSlideLength:length];
        
        geometrySubLayer.fillColor =(__bridge CGColorRef)([colorList objectAtIndex:index]);
        
        [geometryLayer1 addSublayer: geometrySubLayer];
        
        geometrySubLayer.anchorPoint = CGPointMake(0.0f, 0.5);
        
        geometrySubLayer.position =CGPointMake(geometryLayer3.position.x+120+(index*threeShaperlength), geometryLayer3.position.y);
    }
    
    
    CAShapeLayer *geometryLayer5 = [CAShapeLayer layer];
    
    geometryLayer5.frame = currentLayer.bounds;
    
    geometryLayer5.path = [self geometryColorBarStroke:currentLayer upSlideLength:fourShaperlength];
    
    geometryLayer5.fillColor = [UIColor whiteColor].CGColor;
    
    [maskLayer addSublayer: geometryLayer5];
    
    geometryLayer5.anchorPoint = CGPointMake(0.0f, 0.5);
    
    geometryLayer5.position =CGPointMake(geometryLayer3.position.x+150+(3*threeShaperlength), geometryLayer3.position.y);
    
    
    for (NSInteger index=3; index< 5; index++) {
        
        CAShapeLayer *geometrySubLayer = [CAShapeLayer layer];
        
        geometrySubLayer.frame = CGRectMake(0, 0, startXOffset+threeShaperlength, currentLayer.frame.size.height);
        
        CGFloat length = twoShaperlength;
        
        if (index ==4) {
            length = 90;
        }
        
        geometrySubLayer.path = [self geometryStroke:currentLayer upSlideLength:length];
        
        geometrySubLayer.fillColor =(__bridge CGColorRef)([colorList objectAtIndex:index]);
        
        [geometryLayer1 addSublayer: geometrySubLayer];
        
        geometrySubLayer.anchorPoint = CGPointMake(0.0f, 0.5);
        
        //geometrySubLayer.position =CGPointMake(0, geometryLayer3.position.y);
        
        geometrySubLayer.position =CGPointMake(geometryLayer3.position.x+150+((index)*threeShaperlength), geometryLayer3.position.y);
    }
    
    CGPoint nextPosition = CGPointMake(-660, currentLayer.frame.size.height/2);
    
    dispatch_async_main_after(2, ^{

        CABasicAnimation *moveAni = [AVBasicRouteAnimate moveXYCenterTo:2.2 withBeginTime:0 toValue: nextPosition];
        
        [geometryLayer1 addAnimation: moveAni forKey:@"moveAni"];
        
        [maskLayer addAnimation: moveAni forKey:@"moveAni"];
    });


}


@end
