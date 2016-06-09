//
//  frameModel.h
//  cocoaPods
//
//  Created by 胡凡 on 16/6/9.
//  Copyright © 2016年 胡凡. All rights reserved.
//

#import <Foundation/Foundation.h>

@class dataModel;

@interface frameModel : NSObject

//传入一个model 根据这个model 创建对应的位置数据。

@property(nonatomic,strong)dataModel *model;

@end
