//
//  ProgressAnimation2.h
//  AppleProgressHUD
//
//  Created by Dotsquares on 7/11/16.
//  Copyright © 2016 Dotsquares. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressAnimation2 : UIView
{
    float updateValue;
    float updateValue2;
    
    NSTimer *timer;
}

-(void)updateAnimationValue;
-(void)initWithTimerValue;

@end
