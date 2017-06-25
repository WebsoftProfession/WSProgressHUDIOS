//
//  UIImageView+WSProgressHUDImageLoaderStyleIOS.h
//  WSProgressHUDStyle1
//
//  Created by WebsoftProfession on 4/17/17.
//  WebsoftProfession
//

#import <UIKit/UIKit.h>
#import "WSProgressHUD.h"
#import "UIImageView+AFNetworking.h"

@interface UIImageView (WSProgressHUDImageLoaderStyleIOS)
-(void)setImageWithURLRequest:(NSString *)urlString;
@end
