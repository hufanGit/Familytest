//
//  WeiboCell.m
//  cocoaPods
//
//  Created by 胡凡 on 16/6/9.
//  Copyright © 2016年 胡凡. All rights reserved.
//

//创建这个cell 的目的是当外部传入两个参数的时候会自动根据传入的 frame 和数据的参数创建相应的cell



#import "WeiboCell.h"

@implementation WeiboCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
