//
//  HBBaseNavigationController.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/3.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBBaseNavigationController.h"
#import "HBBaseTableViewController.h"

@interface HBBaseNavigationController ()

@end

@implementation HBBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self createNavigationItems];
    
}

/*
-(void)createNavigationItems {
    UILabel* titleLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 60, 20)];
    titleLab.backgroundColor = [UIColor clearColor];
    titleLab.text = @"心跳吧";
    titleLab.textColor = WHITECOLOR;
    titleLab.font = FONT17;
    UIBarButtonItem *titleItem = [[UIBarButtonItem alloc] initWithCustomView:titleLab];
    self.navigationItem.leftBarButtonItem = titleItem;
    
    UIButton* addBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 35, 35)];
    [addBtn setBackgroundImage:[UIImage imageNamed:@"barbuttonicon_add.png"] forState:UIControlStateNormal];
    addBtn.tag = 1;//"+"按钮
    UIBarButtonItem* addItem = [[UIBarButtonItem alloc]initWithCustomView:addBtn];
    
    UIButton* moreBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    [moreBtn setBackgroundImage:[UIImage imageNamed:@"barItem_More.png"] forState:UIControlStateNormal];
    moreBtn.tag = 2;//"..."按钮
    UIBarButtonItem* moreItem = [[UIBarButtonItem alloc]initWithCustomView:moreBtn];
    HBBaseTableViewController* baseTVC = [self.viewControllers firstObject];
    baseTVC.navigationItem.rightBarButtonItems = @[moreItem, addItem];
    
    [addBtn addTarget:self action:@selector(clickedNavigationBarItem:) forControlEvents:UIControlEventTouchUpInside];
    [moreBtn addTarget:self action:@selector(clickedNavigationBarItem:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)clickedNavigationBarItem:(UIButton* )sender {
    if (sender.tag == 1) {
        NSLog(@"clickedAddButton");
        
        UIView* addView = [[UIView alloc]initWithFrame:CGRectMake(VIEWWIDTH - 100, NAVIGATIOINBARHEIGHT, 80, 100)];
        addView.backgroundColor = BLACKCOLOR;
        HBBaseTableViewController* baseTVC = [self.viewControllers firstObject];
        [baseTVC.view addSubview:addView];
        
    }else if (sender.tag == 2) {
        NSLog(@"clickedMoreButton");
    }
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
