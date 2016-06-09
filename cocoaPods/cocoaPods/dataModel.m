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
