//
//  frameModel.m
//  cocoaPods
//
//  Created by 胡凡 on 16/6/9.
//  Copyright © 2016年 胡凡. All rights reserved.
//

//为cell 计算frame的基本数据

#import "frameModel.h"
@interface frameModel()

//基本控件的高度

@property(nonatomic,assign)Rect nameframe;
@property(nonatomic,assign)Rect vipframe;
@property(nonatomic,assign)Rect textframe;
@property(nonatomic,assign)Rect iconframe;
@property(nonatomic,assign)Rect pictureframe;

//最后得到的cell 的高度
@property(nonatomic,assign)float cellHeight;


@end
@implementation frameModel

@end
