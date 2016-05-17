//
//  ViewController.m
//  LFAlertView-Demo
//
//  Created by MacBook_liufei on 16/5/3.
//  Copyright © 2016年 Madiffer. All rights reserved.
//

#import "ViewController.h"
#import "LFAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    LFAlertView *alert=[[LFAlertView alloc] initWithTitle:@"飞哥提示" message:@"我的自定义alertview,可以自动适应文字内容。" cancelBtnTitle:@"取消" otherBtnTitle:@"确定" clickIndexBlock:^(NSInteger clickIndex) {
        if (clickIndex == 0) {
            NSLog(@"你点击了第一个按钮");
        }else {
            NSLog(@"你点击了第二个按钮");
        }
    }];
//    alert.dontDissmiss = YES;
    //设置动画类型(默认是缩放)
    alert.animationStyle = LFASAnimationLeftShake;
    [alert showLFAlertView];
    
}

@end
