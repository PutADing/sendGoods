//
//  HBBaseViewController.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/3.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBBaseViewController.h"

@interface HBBaseViewController ()

@end

@implementation HBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([[[UIDevice currentDevice]systemVersion]floatValue] >=7.0) {
        [self setAutomaticallyAdjustsScrollViewInsets:NO];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
