//
//  Constant.h
//  HWQActivityIndicatorDemo
//  保存常用常亮数据
//  Created by 黄伟强 on 2017/6/22.
//  Copyright © 2017年 hwq. All rights reserved.
//
//数字代表屏幕尺寸3.5 4.0 4.7 5.5
#define iPhone35    ([[UIScreen mainScreen] bounds].size.height == 480)
#define iPhone40     ([[UIScreen mainScreen] bounds].size.height == 568)
#define iPhone47     ([[UIScreen mainScreen] bounds].size.height == 667)
#define iPhone55 ([[UIScreen mainScreen] bounds].size.height == 736)
//屏幕宽度
#define DEVW [[UIScreen mainScreen] bounds].size.width
//屏幕高度
#define DEVH [[UIScreen mainScreen] bounds].size.height
//导航栏高度
#define TOPHeight 44
//标签栏高度
#define BVHeight 50
