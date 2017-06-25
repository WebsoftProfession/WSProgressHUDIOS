//
//  UIViewController+WSProgressHUDStyleIOS.m
//  AppleProgressHUD
//
//  Created by WebsoftProfession on 4/17/17.
//  WebsoftProfession
//

#import "UIViewController+WSProgressHUDStyleIOS.h"

@implementation UIViewController (WSProgressHUDStyleIOS)
-(void)ShowWSProgressHUD{
    WSProgressHUD *progressView=[WSProgressHUD sharedInstance];
    progressView.frame=self.view.bounds;
    progressView.alpha=1.0;
    progressView.backgroundColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    [self.view addSubview:progressView];
    [progressView initWithTimerValue];
}



-(void)HideWSProgressHUD{
    WSProgressHUD *progressView=[WSProgressHUD sharedInstance];
    [progressView removeProgressHUD];
}

@end
