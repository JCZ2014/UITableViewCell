//
//  MyCell.m
//  UITableViewCell-master
//
//  Created by YDD on 2017/3/25.
//  Copyright © 2017年 none. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        
    }
    return self;
}

- (void)initUI {
    // 防止复用
    for (UIView *view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    
    self.contentLabel = [[UILabel alloc] init];
    self.contentLabel.frame = CGRectMake(30, 10, self.contentView.bounds.size.width - 60, self.contentView.bounds.size.height - 20);
    self.contentLabel.text = @"测试数据";
    [self.contentView addSubview:self.contentLabel];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
