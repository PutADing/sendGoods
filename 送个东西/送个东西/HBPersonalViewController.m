//
//  HBPersonalViewController.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/4.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBPersonalViewController.h"
#import "HBPersonalTableViewCell.h"

@interface HBPersonalViewController ()

@end

@implementation HBPersonalViewController

static NSString* identifier = @"personalCell";

-(instancetype)init {
    self = [super init];
    if (self) {        
        [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : THEMECOLOR} forState:UIControlStateSelected];
        self.tabBarItem.title = @"个人";
        self.tabBarItem.image = [UIImage imageNamed:@"personalVC.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createSearchNavigationBarItem];
    
    [self preferTableView];
    
    
}

-(void)preferTableView {
    self.tableView.backgroundColor = BACKGROUNDCOLOR_GRAY;
    self.tableView.frame = CGRectMake(0, NAVIGATIOINBARHEIGHT, VIEWWIDTH, VIEWHEIGHT - NAVIGATIOINBARHEIGHT - self.tabBarController.tabBar.frame.size.height);
    [self.tableView registerClass:[HBPersonalTableViewCell class] forCellReuseIdentifier:identifier];
}



#pragma mark UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
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
    HBPersonalTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    if (!cell) {
        cell = [[HBPersonalTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
