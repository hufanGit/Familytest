//
//  dataModel.m
//  cocoaPods
//
//  Created by 胡凡 on 16/6/9.
//  Copyright © 2016年 胡凡. All rights reserved.
//

#import "dataModel.h"
@interface dataModel()

//使用kvc 会自动为当前的属性赋值。

@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *vip;
@property(nonatomic,copy)NSString *text;
@property(nonatomic,copy)NSString *picture;

@end

@implementation dataModel

-(instancetype)initDataModelWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        //kvc 用字典来创建.
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

@end
