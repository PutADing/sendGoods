//
//  HBSearchTableViewController.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/4.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBSearchTableViewController.h"
#import "HBSearchTableViewCell.h"

@interface HBSearchTableViewController ()
@property (nonatomic, weak)UITextField* searchTF;

@end

@implementation HBSearchTableViewController

static NSString* identifier = @"searchCell";


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"搜索";
    
    [self preferTableView];
}


//设置tableView
-(void)preferTableView {
    self.tableView.backgroundColor = WHITECOLOR;
    self.tableView.frame = CGRectMake(0, NAVIGATIOINBARHEIGHT, VIEWWIDTH, VIEWHEIGHT - NAVIGATIOINBARHEIGHT - self.tabBarController.tabBar.frame.size.height);
    [self.tableView registerClass:[HBSearchTableViewCell class] forCellReuseIdentifier:identifier];
}

#pragma mark UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return DEFAULT_CELLHEIGHT;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.01;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HBSearchTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    if (!cell) {
        cell = [[HBSearchTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
