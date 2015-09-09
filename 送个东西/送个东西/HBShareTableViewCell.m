//
//  HBShareTableViewCell.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/3.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBShareTableViewCell.h"

@implementation HBShareTableViewCell


#define WIDTH_ICONIV 40

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self createLineImageViewWithCellHeight:DEFAULT_CELLHEIGHT];
        [self createIconImageViewAndTitleLabel];

    }
    return self;
}

-(void)createIconImageViewAndTitleLabel {
    self.iconIV = [[UIImageView alloc]initWithFrame:CGRectMake(10, (DEFAULT_CELLHEIGHT - WIDTH_ICONIV)/2, WIDTH_ICONIV, WIDTH_ICONIV)];
    [self.contentView addSubview:self.iconIV];
    
    self.titleLab = [[UILabel alloc]initWithFrame:CGRectMake(WIDTH_ICONIV + 10*2, (DEFAULT_CELLHEIGHT - 20)/2, self.frame.size.width - WIDTH_ICONIV - 10*3, 20)];
    self.titleLab.font = FONT17;
    [self.contentView addSubview:self.titleLab];
}

@end
