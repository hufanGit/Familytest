//
//  frameModel.m
//  cocoaPods
//
//  Created by 胡凡 on 16/6/9.
//  Copyright © 2016年 胡凡. All rights reserved.
//

//为cell 计算frame的基本数据

#import "frameModel.h"
#import "dataModel.h"
@interface frameModel()

//基本控件的高度

@property(nonatomic,assign)CGRect nameframe;
@property(nonatomic,assign)CGRect vipframe;
@property(nonatomic,assign)CGRect textframe;
@property(nonatomic,assign)CGRect iconframe;
@property(nonatomic,assign)CGRect pictureframe;

@end
@implementation frameModel

-(void)setModel:(dataModel *)model
{
    //使用外部的model 对model赋值时候调用这个方法
    _model = model;
    
    //调用的方法
    [self setSubViewFrame];
    
}

//计算子视图的frame
- (void)setSubViewFrame{
    
    //公共属性
    //间距
    float margin = 10;
    //屏幕宽度
    float sreenW = [UIScreen mainScreen].bounds.size.width;
    
    //1.头像
    CGFloat iconX = margin;
    CGFloat iconY = margin;
    CGFloat iconW = 50;
    CGFloat iconH = iconW;
    _iconframe = CGRectMake(iconX, iconY, iconW, iconH);
    
    //2.名字
    CGFloat nameX = iconX + iconW + margin;
    //根据文字的大小和文字的数量来确定需要显示这个文字的label的大小
    CGSize nameSize = [self getTextRectWithText:self.model.text maxSize:CGSizeMake(300, 100) FontSize:15];
    CGFloat nameW = nameSize.width;
    CGFloat nameH = nameSize.height;
    CGFloat nameY = iconY + iconH/2.0f - nameH/2.0f;
    _nameframe = CGRectMake(nameX, nameY, nameW, nameH);
    
    //3.VIP
    CGFloat vipH = nameH;
    CGFloat vipW = vipH;
    CGFloat vipX = nameX + nameW + margin;
    CGFloat vipY = nameY;
    _vipframe = CGRectMake(vipX, vipY, vipW, vipH);
    
    //4.文字
    CGFloat textX = margin;
    CGFloat textY = iconY + iconH + margin;
    //MAXFLOAT 最大的浮点数
    CGSize textSize = [self getTextRectWithText:self.model.text maxSize:CGSizeMake(sreenW - margin * 2, MAXFLOAT) FontSize:14];
    CGFloat textW = textSize.width;
    CGFloat textH = textSize.height;
    _textframe = CGRectMake(textX, textY, textW, textH);
    
    //5.图片
    CGFloat pictureX = margin;
    CGFloat pictureY = textY + textH + margin;
    UIImage * image = [UIImage imageNamed:self.model.picture];
    CGFloat pictureW = image.size.width * 0.5;
    CGFloat pictureH = image.size.height * 0.5;
    _pictureframe = CGRectMake(pictureX, pictureY, pictureW, pictureH);
    
    //6.计算cell的高度
    if (self.model.picture) {
        
        _cellHeight = pictureY + pictureH + margin;
        
    }else{
        
        _cellHeight = textY + textH + margin;
    }
    
}

//计算指定文字的大小
- (CGSize)getTextRectWithText:(NSString *)text maxSize:(CGSize)maxSize FontSize:(CGFloat)size{
    
    //计算指定文字需要显示的时候的大小
    //参数1:限制显示文字空间的最大宽度和最大高度
    //参数2:渲染模式/NSStringDrawingUsesLineFragmentOrigin
    //参数3:文字属性(只需要设置字体)，显示文字的label字体要小于等于这个字体
    CGRect rect = [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:size]} context:nil];
    
    return rect.size;
    
}



@end
