//
//  HWQActivityIndicator.h
//  HWQActivityIndicatorDemo
//
//  Created by 黄伟强 on 2017/6/22.
//  Copyright © 2017年 hwq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HWQActivityIndicator : NSObject

@property(nonatomic,strong)UIActivityIndicatorView* spin;//风火轮

+(HWQActivityIndicator *)SharedActivityIndicator;//创建单例对象

#pragma mark 打开及关闭风火轮

-(void)StartActivityIndicator:(UIViewController*)target;

-(void)StopActivityIndicator;
@end
