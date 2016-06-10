//
//  WeiboCell.h
//  cocoaPods
//
//  Created by 胡凡 on 16/6/9.
//  Copyright © 2016年 胡凡. All rights reserved.
//

#import <UIKit/UIKit.h>

@class dataModel;
@class frameModel;
@interface WeiboCell : UITableViewCell

//传入两个模型，设置位置和包含的内容。但是这些控件的基本属性还没有。需要先重写cell 的创建方法。创建这个cell


@property(nonatomic,strong)dataModel *dataM;
@property(nonatomic,strong)frameModel *frameM;

@end
