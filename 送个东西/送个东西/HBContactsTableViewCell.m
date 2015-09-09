//
//  HBContactsTableViewCell.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/4.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBContactsTableViewCell.h"

@implementation HBContactsTableViewCell

//头像 宽高
#define WIDTH_HEADIV 40

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self createLineImageViewWithCellHeight:DEFAULT_CELLHEIGHT];
        [self createHeadImageViewAndNameLabel];
        
    }
    return self;
}

-(void)createHeadImageViewAndNameLabel {
    self.headIV = [[UIImageView alloc]initWithFrame:CGRectMake(10, 5, WIDTH_HEADIV, WIDTH_HEADIV)];
    self.headIV.layer.cornerRadius = WIDTH_HEADIV/2;
    self.headIV.layer.masksToBounds = YES;
    [self.contentView addSubview:self.headIV];
    
    self.nameLab = [[UILabel alloc]initWithFrame:CGRectMake(WIDTH_HEADIV + 10*2, (DEFAULT_CELLHEIGHT - 20)/2, self.frame.size.width - WIDTH_HEADIV - 10*3, 20)];
    self.nameLab.font = FONT17;
    [self.contentView addSubview:self.nameLab];
    
    self.redDot = [[CALayer alloc]init];
    self.redDot.frame = CGRectMake(self.nameLab.frame.origin.x + 70, self.nameLab.frame.origin.y, 8, 8);
    self.redDot.cornerRadius = 8/2;
    self.redDot.masksToBounds = YES;
    [self.redDot setBackgroundColor:REDCOLOR.CGColor];
    [self.contentView.layer addSublayer:self.redDot];
    self.redDot.hidden = YES;
}

@end
