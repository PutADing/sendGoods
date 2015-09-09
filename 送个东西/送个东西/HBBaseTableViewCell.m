//
//  HBBaseTableViewCell.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/3.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "HBBaseTableViewCell.h"

@implementation HBBaseTableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        
        
    }
    return self;
}

-(void)createLineImageViewWithCellHeight:(CGFloat)cellHeight {
    UIImageView* lineIV = [[UIImageView alloc]initWithFrame:CGRectMake(0, cellHeight - 1, self.frame.size.width, 1)];
    lineIV.image = [UIImage imageNamed:@"line.png"];
    [self.contentView addSubview:lineIV];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
