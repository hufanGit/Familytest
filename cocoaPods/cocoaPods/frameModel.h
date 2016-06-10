//
//  frameModel.h
//  cocoaPods
//
//  Created by 胡凡 on 16/6/9.
//  Copyright © 2016年 胡凡. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class dataModel;

@interface frameModel : NSObject

@property(nonatomic,assign)CGRect nameframe;
@property(nonatomic,assign)CGRect vipframe;
@property(nonatomic,assign)CGRect textframe;
@property(nonatomic,assign)CGRect iconframe;
@property(nonatomic,assign)CGRect pictureframe;

//最后得到的cell 的高度
@property(nonatomic,assign)CGFloat cellHeight;

//传入一个model 根据这个model 创建对应的位置数据。

@property(nonatomic,strong)dataModel *model;

@end
