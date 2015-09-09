//
//  HBBaseTableViewController.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/3.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBBaseTableViewController.h"
#import "HBBaseTableViewCell.h"
#import "HBSearchTableViewController.h"

@interface HBBaseTableViewController ()

@end

@implementation HBBaseTableViewController

static NSString* identifier = @"baseCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createTableView];
    
    
}

//创建tableView
-(void)createTableView {
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NAVIGATIOINBARHEIGHT, VIEWWIDTH, VIEWHEIGHT - NAVIGATIOINBARHEIGHT) style:UITableViewStylePlain];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
}

//创建右上角搜索 按钮
-(void)createSearchNavigationBarItem {
    UILabel* titleLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 60, 20)];
    titleLab.backgroundColor = [UIColor clearColor];
    titleLab.text = @"心跳吧";
    titleLab.textColor = WHITECOLOR;
    titleLab.font = FONT17;
    UIBarButtonItem *titleItem = [[UIBarButtonItem alloc] initWithCustomView:titleLab];
    self.navigationItem.leftBarButtonItem = titleItem;
    
    UIButton* searchBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    [searchBtn setBackgroundImage:[UIImage imageNamed:@"barButton_Search.png"] forState:UIControlStateNormal];
    searchBtn.tag = 1;
    [searchBtn addTarget:self action:@selector(clickedSearchNavigationBarItem:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem* searchItem = [[UIBarButtonItem alloc]initWithCustomView:searchBtn];
    self.navigationItem.rightBarButtonItem = searchItem;
}

//点击右上角搜索 按钮
-(void)clickedSearchNavigationBarItem:(UIButton* )sender {
    if (sender.tag == 1) {
        HBSearchTableViewController* searchVC = [[HBSearchTableViewController alloc]init];
        [self.navigationController pushViewController:searchVC animated:YES];
    }
}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HBBaseTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    if (!cell) {
        cell = [[HBBaseTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    return cell;
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
