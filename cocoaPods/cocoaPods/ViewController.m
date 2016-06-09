//
//  ViewController.m
//  cocoaPods
//
//  Created by 胡凡 on 16/6/9.
//  Copyright © 2016年 胡凡. All rights reserved.
//

#import "ViewController.h"
#import "frameModel.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic ,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *frameArray;

@end

@implementation ViewController

//为数据模型和位置模型创建懒加载的办法。

-(NSMutableArray *)dataArray
{
    if (_dataArray == nil) {
        
        //创建数据模型
        _dataArray = [[NSMutableArray alloc]init];
        
        //将数据填入数组（预留）
        
    }
    return _dataArray;
}


//使用单利的模式创建的。当系统调用的时候回自动掉用的。这个方法相当于重写了get set 方法
-(NSMutableArray *)frameArray
{
    if (_frameArray == nil )  {
        
        _frameArray = [[NSMutableArray alloc]init];
        
        //注入数据
//        NSString *hufan = @"hufan";
       

    }
    return _frameArray;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //
    self.automaticallyAdjustsScrollViewInsets = NO;
    

    UITableView *tableview = [[UITableView alloc]initWithFrame:[[UIScreen mainScreen]bounds] style: UITableViewStylePlain];
    //自己添加数据和相应消息
    tableview.delegate = self;
    tableview.dataSource =self;
    
    
    
    [self.view addSubview:tableview];
    
}

//设置显示行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //当行数设置出错的时候高度也会停止调用
    
    return 5;
}


//设置cell

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //以复用池的形式来创建cell 以胡凡cell为标志，如果没有就会自动创建。
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"hufanCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"hufancell"];
    }
    //当cell 被取出之后就会向里面填入自己想要的数据
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 200;
}


@end
