//
//  ViewController.m
//  LSDrawRectLineDemo
//
//  Created by WangBiao on 2016/12/7.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:view];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
