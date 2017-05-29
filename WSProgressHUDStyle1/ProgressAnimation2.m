//
//  ProgressAnimation2.m
//  AppleProgressHUD
//
//  Created by Dotsquares on 7/11/16.
//  Copyright © 2016 Dotsquares. All rights reserved.
//

#import "ProgressAnimation2.h"

@implementation ProgressAnimation2

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    
    UIBezierPath *startPath=[UIBezierPath bezierPath];
    UIBezierPath *startPath2=[UIBezierPath bezierPath];
    
    if (updateValue==0 && updateValue2==0) {
        updateValue=3;
        updateValue2=4;
        [startPath2 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:10 startAngle:M_PI*3/2 endAngle:M_PI*4/2 clockwise:YES];
    }
    else
    {
        if (updateValue2>8) {
            
            updateValue=3;
            updateValue2=4;
            [startPath2 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:10 startAngle:M_PI*3/2 endAngle:M_PI*4/2 clockwise:YES];
        }
        else
        {
            [startPath2 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:10 startAngle:M_PI*updateValue/2 endAngle:M_PI*updateValue2/2 clockwise:YES];
        }
        
    }
    
    [startPath addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:10 startAngle:0 endAngle:M_PI*2 clockwise:YES];
    //[startPath2 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:0 endAngle:M_PI/2 clockwise:YES];
    
    [[UIColor blackColor] set];
    [startPath setLineWidth:2];
    [startPath setLineCapStyle:kCGLineCapButt];
    [startPath stroke];
    
    [[UIColor whiteColor] set];
    [startPath2 setLineWidth:2];
    [startPath2 setLineCapStyle:kCGLineCapButt];
    [startPath2 stroke];
    
    
}

-(void)updateAnimationValue
{
    updateValue+=0.1;
    updateValue2+=0.1;
    [self setNeedsDisplay];
}

-(void)initWithTimerValue
{
    timer=[NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(updateAnimationValue) userInfo:nil repeats:YES];
}


@end
