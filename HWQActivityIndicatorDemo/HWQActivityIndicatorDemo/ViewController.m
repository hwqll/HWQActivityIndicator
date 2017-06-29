//
//  ViewController.m
//  HWQActivityIndicatorDemo
//
//  Created by 黄伟强 on 2017/6/22.
//  Copyright © 2017年 hwq. All rights reserved.
//

#import "ViewController.h"
#import "HWQActivityIndicator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)download {
    //开始
    [[HWQActivityIndicator SharedActivityIndicator]StartActivityIndicator:self];
    //延迟执行.这里加入自己的下载、长传代码即可
    dispatch_time_t delayTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10.0/*延迟执行时间*/ * NSEC_PER_SEC));
    
    dispatch_after(delayTime, dispatch_get_main_queue(), ^{
        //结束
        [[HWQActivityIndicator SharedActivityIndicator]StopActivityIndicator];
    });
    
    
}
- (IBAction)downBtnClicked:(id)sender {
    [self download];
}





@end
