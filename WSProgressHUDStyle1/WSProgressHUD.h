//
//  ProgressAnimation.h
//  AppleProgressHUD
//
//  Created by WebsoftProfession on 7/11/16.
//  WebsoftProfession
//

#import <UIKit/UIKit.h>
#import "UIViewController+WSProgressHUDStyleIOS.h"
#import "UIImageView+WSProgressHUDImageLoaderStyleIOS.h"

@interface WSProgressHUD : UIView
{
    float animationValue;
    float animationValue2;
    NSTimer *timer;
}

+(instancetype)sharedInstance;
-(void)initWithTimerValue;
-(void)removeProgressHUD;

@end
