//
//  LSDrawRectViewTwo.m
//  LSDrawRectLineDemo
//
//  Created by WangBiao on 2016/12/7.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import "LSDrawRectViewTwo.h"

@implementation LSDrawRectViewTwo

/// 绘图方式二 - 使用C语言`路径`
- (void)drawRect:(CGRect)rect {
    CGContextRef cxt = UIGraphicsGetCurrentContext();
    CGMutablePathRef path = CGPathCreateMutable();
    /// 起点
    CGPathMoveToPoint(path, NULL, 50, 50);
    CGPathAddLineToPoint(path, NULL, 50, 250);
    // 斜线
    CGPathAddLineToPoint(path, NULL, 250, 50);
    /// 关闭路径
    CGPathCloseSubpath(path);
    CGContextAddPath(cxt, path);
    CGContextDrawPath(cxt, kCGPathStroke);
    /// 释放路径
    CGPathRelease(path);
    /// 也可以使用 `CFRelease`
    //CFRelease(path);
}

@end
