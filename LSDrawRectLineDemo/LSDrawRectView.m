//
//  LSDrawRectView.m
//  LSDrawRectLineDemo
//
//  Created by WangBiao on 2016/12/7.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import "LSDrawRectView.h"

@implementation LSDrawRectView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    /// 获取当前上下文
    CGContextRef cxt = UIGraphicsGetCurrentContext();
    /// 设置起点
    CGContextMoveToPoint(cxt, 50, 50);
    /// 设置终点
    CGContextAddLineToPoint(cxt, 80, 250);
    /// 描边
    CGContextDrawPath(cxt, kCGPathStroke);
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI{
    self.backgroundColor = [UIColor blueColor];
}

@end
