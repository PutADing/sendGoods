//
//  HBContactsTableViewCell.h
//  送个东西
//
//  Created by 蒋宽 on 15/6/4.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBBaseTableViewCell.h"

@interface HBContactsTableViewCell : HBBaseTableViewCell
@property (nonatomic, strong)UIImageView* headIV;//头像
@property (nonatomic, strong)UILabel* nameLab;//名字

@property (nonatomic, strong)CALayer* redDot;//新的朋友 右上角的红点

@end
