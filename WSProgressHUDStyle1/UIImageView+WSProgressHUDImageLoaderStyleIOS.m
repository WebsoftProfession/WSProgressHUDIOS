//
//  UIImageView+WSProgressHUDImageLoaderStyleIOS.m
//  WSProgressHUDStyle1
//
//  Created by Dotsquares on 4/17/17.
//  Copyright © 2017 WebsoftProfession. All rights reserved.
//

#import "UIImageView+WSProgressHUDImageLoaderStyleIOS.h"

@implementation UIImageView (WSProgressHUDImageLoaderStyleIOS)

-(void)setImageWithURLRequest:(NSString *)urlString
{
    
    
    self.image=nil;
    WSProgressHUD *progressView=[[WSProgressHUD alloc] init];
    progressView.frame=self.bounds;
    progressView.alpha=1.0;
    progressView.backgroundColor=[UIColor lightGrayColor];
    [self addSubview:progressView];
    
    NSURL *imageURL = [NSURL URLWithString:urlString];
    NSURLRequest *imageRequest = [NSURLRequest requestWithURL:imageURL];
    __weak __typeof(self)weakSelf = self;
    
    __strong __typeof(weakSelf)strongSelf = weakSelf;
    [progressView initWithTimerValue];
    [self setImageWithURLRequest:imageRequest
                placeholderImage:[UIImage imageNamed:@"icon_purple_gray"]
                         success:^(NSURLRequest *request, NSHTTPURLResponse *response, UIImage *image)
     {
         
         [UIView animateWithDuration:0.3 animations:^{
             
             progressView.alpha=0.0;
             
         } completion:^(BOOL finished) {
             
             [progressView removeFromSuperview];
         }];
         
         strongSelf.image = image;
     }
                         failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error)
     {
         strongSelf.image=nil;
         [progressView removeFromSuperview];
     }];
}


@end
