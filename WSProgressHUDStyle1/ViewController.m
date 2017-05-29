//
//  ViewController.m
//  WSProgressHUDStyle1
//
//  Created by Dotsquares on 4/17/17.
//  Copyright © 2017 WebsoftProfession. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)getDataAction:(id)sender {
    
    [self ShowWSProgressHUD];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.requestSerializer.timeoutInterval = 300;
    [manager GET:@"http://del.icio.us/api/peej/bookmarks/?start=1&end=2" parameters:nil success:^(NSURLSessionTask *task, id responseObject) {
        [self HideWSProgressHUD];
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        
        [self HideWSProgressHUD];
    }];
}

- (IBAction)imageAction:(id)sender {
        [imgView setImageWithURLRequest:@"http://www.wallpaper1080hd.com/Picture/allimg/c100228/12C3260GJ220-132K.jpg"];
}
@end
