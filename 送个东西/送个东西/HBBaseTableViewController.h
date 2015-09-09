//
//  HBBaseTableViewController.h
//  送个东西
//
//  Created by 蒋宽 on 15/6/3.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBBaseViewController.h"

@interface HBBaseTableViewController : HBBaseViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong)UITableView* tableView;
//@property (nonatomic, strong)UIButton* searchBtn;

-(void)createTableView;//创建tableView
-(void)createSearchNavigationBarItem;//创建右上角的搜索 按钮

@end
