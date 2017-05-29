//
//  UIImageView+WSProgressHUDImageLoaderStyleIOS.h
//  WSProgressHUDStyle1
//
//  Created by Dotsquares on 4/17/17.
//  Copyright © 2017 WebsoftProfession. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WSProgressHUD.h"
#import "UIImageView+AFNetworking.h"

@interface UIImageView (WSProgressHUDImageLoaderStyleIOS)
-(void)setImageWithURLRequest:(NSString *)urlString;
@end
