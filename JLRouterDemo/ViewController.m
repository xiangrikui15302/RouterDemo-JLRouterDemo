//
//  ViewController.m
//  JLRouterDemo
//
//  Created by 于朝盼 on 2018/7/31.
//  Copyright © 2018年 于朝盼. All rights reserved.
//

#import "ViewController.h"
#import "JLRoutes.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(80, 100, 100, 40)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

-(void)clickAction:(UIButton *)btn{
    // 点击通过JLRoutes跳转  通过JLRoutes跳转可以解耦，在正式app中一般都是分模块开发 比较方便
    [[JLRoutes routesForScheme:@"nice"] routeURL:[NSURL URLWithString:@"one"] withParameters:@{@"nav":self.navigationController}];
}



@end
