//
//  dataModel.h
//  cocoaPods
//
//  Created by 胡凡 on 16/6/9.
//  Copyright © 2016年 胡凡. All rights reserved.
//
// 为cell 提供填入数据


#import <Foundation/Foundation.h>

@interface dataModel : NSObject

@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *vip;
@property(nonatomic,copy)NSString *text;
@property(nonatomic,copy)NSString *picture;

//根据字典创建detamodel

-(instancetype)initDataModelWithDic:(NSDictionary *)dic;

@end
