//
//  ViewController.h
//  WSProgressHUDStyle1
//
//  Created by WebsoftProfession on 4/17/17.
//  WebsoftProfession
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

