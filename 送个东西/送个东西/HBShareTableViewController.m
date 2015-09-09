//
//  HBShareTableViewController.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/3.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBShareTableViewController.h"
#import "HBShareTableViewCell.h"

@interface HBShareTableViewController ()
@property (nonatomic, strong)NSArray* titleTextArr;//title文字
@property (nonatomic, strong)NSArray* ivNameArr;//icon名字

@end

@implementation HBShareTableViewController

static NSString* identifier = @"shareCell";

-(instancetype)init {
    self = [super init];
    if (self) {
        [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : THEMECOLOR} forState:UIControlStateSelected];
        self.tabBarItem.title = @"共享";
        self.tabBarItem.image = [UIImage imageNamed:@"shareVC.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createSearchNavigationBarItem];
    
    [self preferTableView];
    
    
}

//设置tableView
-(void)preferTableView {
    self.tableView.backgroundColor = WHITECOLOR;
    self.tableView.scrollEnabled = NO;
    self.tableView.frame = CGRectMake(0, NAVIGATIOINBARHEIGHT, VIEWWIDTH, VIEWHEIGHT - NAVIGATIOINBARHEIGHT - self.tabBarController.tabBar.frame.size.height);
    [self.tableView registerClass:[HBShareTableViewCell class] forCellReuseIdentifier:identifier];
    
    self.ivNameArr = @[@"defaultHeadImage.png", @"defaultHeadImage.png", @"defaultHeadImage.png"];
    self.titleTextArr = @[@"闲置宝贝", @"我送你收", @"我的专柜"];
}

#pragma mark UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleTextArr.count;
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
    HBShareTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    if (!cell) {
        cell = [[HBShareTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.titleLab.text = self.titleTextArr[indexPath.row];
    cell.iconIV.image = [UIImage imageNamed:self.ivNameArr[indexPath.row]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
    if (indexPath.row == 0) {
        
    }else if (indexPath.row == 1) {
        
    }else if (indexPath.row == 2) {
        
    }else if (indexPath.row == 3) {
        
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
