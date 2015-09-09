//
//  HBContactsTableViewController.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/3.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBContactsTableViewController.h"
#import "HBContactsTableViewCell.h"
#import "HBUser.h"

@interface HBContactsTableViewController ()
@property (nonatomic, strong)NSMutableArray* sectionHeadsKeys;//tableView的分区头标题
@property (nonatomic, strong)NSMutableArray* sortedArrayForArray;//按昵称整理后的数据

@end

@implementation HBContactsTableViewController

static NSString* identifier = @"contactsCell";

-(instancetype)init {
    self = [super init];
    if (self) {
        [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : THEMECOLOR} forState:UIControlStateSelected];
        self.tabBarItem.title = @"通讯录";
        self.tabBarItem.image = [UIImage imageNamed:@"contactsVC.png"];
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
    self.tableView.backgroundColor = BACKGROUNDCOLOR_GRAY;
    self.tableView.frame = CGRectMake(0, NAVIGATIOINBARHEIGHT, VIEWWIDTH, VIEWHEIGHT - NAVIGATIOINBARHEIGHT - self.tabBarController.tabBar.frame.size.height);
    [self.tableView registerClass:[HBContactsTableViewCell class] forCellReuseIdentifier:identifier];
    self.sectionHeadsKeys = [NSMutableArray array];
    self.sortedArrayForArray = [NSMutableArray array];
}

#pragma mark UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sortedArrayForArray.count + 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    }else {
        return [[self.sortedArrayForArray objectAtIndex:section-1] count];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0.01;
    }else {
        return 10;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return DEFAULT_CELLHEIGHT;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section == self.sortedArrayForArray.count) {
        return 0.01;
    }else {
        return 0;
    }
}

//索引数组
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z",@"#"];
}

//分区标题
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return nil;
    }else {
        return self.sectionHeadsKeys[section-1];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HBContactsTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    if (!cell) {
        cell = [[HBContactsTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            cell.headIV.image = [UIImage imageNamed:@"newFriend.png"];
            cell.nameLab.text = @"新的朋友";
            
            
        }else if (indexPath.row == 1) {
            cell.headIV.image = [UIImage imageNamed:@"add_Friend.png"];
            cell.nameLab.text = @"添加朋友";
            
            cell.redDot.hidden = YES;
        }
    }else {
        NSArray* sectionArray = self.sortedArrayForArray[indexPath.section - 1];
        HBUser* user = sectionArray[indexPath.row];
        
        if (user.avatar != nil) {
            if (user.avatar.length > 20) {
                NSURL* imageURL = [NSURL URLWithString:user.avatar];
                
                
//                [cell.headIV sd_setImageWithPreviousCachedImageWithURL:imageURL andPlaceholderImage:DEFAULT_HEADIMAGE options:SDWebImageLowPriority progress:^(NSInteger receivedSize, NSInteger expectedSize) {
//                
//                } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
//                    user.headImage = image;
//                }];
                
            }
        }else {
            user.headImage = DEFAULT_HEADIMAGE;
            cell.headIV.image = user.headImage;
        }
        
        cell.nameLab.text = user.nickName;
        
        cell.redDot.hidden = YES;
        
        //添加长按手势
        UILongPressGestureRecognizer* longPressGesture =         [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(cellLongPress:)];
        longPressGesture.minimumPressDuration = 1.0f;
        [cell addGestureRecognizer:longPressGesture];
    }
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
    
}

-(void)cellLongPress:(UILongPressGestureRecognizer* )gestureRecognizer {
    
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
