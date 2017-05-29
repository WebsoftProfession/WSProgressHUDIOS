//
//  ViewController.h
//  WSProgressHUDStyle1
//
//  Created by Dotsquares on 4/17/17.
//  Copyright © 2017 WebsoftProfession. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WSProgressHUD.h"
#import <AFNetworking.h>


@interface ViewController : UIViewController
{
    __weak IBOutlet UIImageView *imgView;
    
}
- (IBAction)getDataAction:(id)sender;
- (IBAction)imageAction:(id)sender;

@end

