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

//根据字典创建detamodel

-(instancetype)initDataModelWithDic:(NSDictionary *)dic;

@end
