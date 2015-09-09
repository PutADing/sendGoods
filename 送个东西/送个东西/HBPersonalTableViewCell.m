//
//  HBPersonalTableViewCell.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/4.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBPersonalTableViewCell.h"

@implementation HBPersonalTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self createLineImageViewWithCellHeight:DEFAULT_CELLHEIGHT];
        
    }
    return self;
}

@end
