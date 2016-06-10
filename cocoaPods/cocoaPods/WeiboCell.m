//
//  WeiboCell.m
//  cocoaPods
//
//  Created by 胡凡 on 16/6/9.
//  Copyright © 2016年 胡凡. All rights reserved.
//

//创建这个cell 的目的是当外部传入两个参数的时候会自动根据传入的 frame 和数据的参数创建相应的cell



#import "WeiboCell.h"
#import "dataModel.h"
#import "frameModel.h"

@interface WeiboCell()

@property(nonatomic,strong)UILabel *nameLabel;
@property(nonatomic,strong)UILabel *textcomLabel;

@property(nonatomic,strong)UIImageView *iconImage;
@property(nonatomic,strong)UIImageView *pictureImage;
@property(nonatomic,strong)UIImageView *vipImage;



@end


@implementation WeiboCell


-(void)setDataM:(dataModel *)dataM
{
    //通过这个的set方法来给属性赋值
    _dataM = dataM;
    
    _iconImage.image = [UIImage imageNamed:dataM.icon];
    
    _nameLabel.text = dataM.name;
    
    if (dataM.vip.integerValue ==1) {
        _vipImage.hidden = NO;
        _nameLabel.textColor = [UIColor redColor];
    }
    else
    {
        _vipImage.hidden =NO;
        _nameLabel.textColor = [UIColor blackColor];
    }
    _textcomLabel.text = dataM.text;
    //printf("获取到的数据:%s\n",dataM.text.UTF8String);
    
    printf("%s\n",dataM.picture.UTF8String);
    _pictureImage.image = [UIImage imageNamed:dataM.picture];
}

//设置位置

-(void)setFrameM:(frameModel *)frameM
{
    _frameM = frameM;
    
    _iconImage.frame = frameM.iconframe;
    _textcomLabel.frame = frameM.textframe;
    _nameLabel.frame = frameM.nameframe;
    _pictureImage.frame = frameM.pictureframe;
    
  //  NSLog(@"图片位置%@\n",frameM.pictureframe);
    _vipImage.frame = frameM.vipframe;
    
}


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //重写cell 的初始化方法。同时也是对立面 的控件的对象进行初始化。
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        
        //1.头像
        _iconImage = [[UIImageView alloc] init];
        [self.contentView addSubview:_iconImage];
        
        //2.名字
        _nameLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_nameLabel];
        _nameLabel.backgroundColor = [UIColor yellowColor];
        _nameLabel.font = [UIFont systemFontOfSize:15];
        
        //3.VIP
        _vipImage = [[UIImageView alloc] init];
        [self.contentView addSubview:_vipImage];
        _vipImage.image = [UIImage imageNamed:@"vip"];
        
        //4.文字
        _textcomLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_textcomLabel];
        //_textcomLabel.backgroundColor = [UIColor greenColor];
        _textcomLabel.font = [UIFont systemFontOfSize:14];
        //自动换行
        _textcomLabel.numberOfLines = 0;
        
        //5.图片
        _pictureImage = [[UIImageView alloc] init];
        
        [self.contentView addSubview:_pictureImage];
        
        
        
    }
    return self;
}

@end
