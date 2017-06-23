//
//  HWQActivityIndicator.m
//  HWQActivityIndicatorDemo
//
//  Created by 黄伟强 on 2017/6/22.
//  Copyright © 2017年 hwq. All rights reserved.
//

#import "HWQActivityIndicator.h"

static HWQActivityIndicator *hwqActivityIndicator = nil;

@implementation HWQActivityIndicator
//得到单例
+(HWQActivityIndicator*)SharedActivityIndicator
{
    if( hwqActivityIndicator == nil )
    {
        hwqActivityIndicator = [[HWQActivityIndicator alloc] init];
    }
    return hwqActivityIndicator;
}
#pragma mark 打开及关闭进度滚动条
-(void)StartActivityIndicator:(UIViewController*)target
{
    //废弃原来对象
    if( _spin != nil )
    {
        [_spin removeFromSuperview];
        _spin = nil;
    }
    
    //创建指定风格的活动指示器视图。
    _spin=[[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    _spin.color=[UIColor darkGrayColor];
    _spin.center=CGPointMake([[UIScreen mainScreen] bounds].size.width/2, [[UIScreen mainScreen] bounds].size.height/2);//位置
    [target.view addSubview:_spin];
    //移动指定视图到最前端显示。
    [target.view bringSubviewToFront:self.spin];
    //开始滚动效果

    [_spin startAnimating];
}
//停止滚动效果
-(void)StopActivityIndicator{
    [_spin stopAnimating];
}

@end
