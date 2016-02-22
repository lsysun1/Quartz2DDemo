//
//  Q2DShapeView.m
//  Quartz2D
//
//  Created by 李松玉 on 16/2/22.
//  Copyright © 2016年 李松玉. All rights reserved.
//

#import "Q2DShapeView.h"

@implementation Q2DShapeView


- (void)drawRect:(CGRect)rect{


}


#pragma mark - 画一个三角形
- (void)drawArc{
    //1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //2.拼接路径
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(100, 120)];
    [path addLineToPoint:CGPointMake(150, 60)];
    
    // 关闭路径（从终点到起点）
    [path closePath];
    
    //3.把路径添加到上下文当中
    CGContextAddPath(ctx, path.CGPath);
    
    //4.设置路径属性
    [[UIColor redColor] setFill];
    [[UIColor greenColor] setStroke];
    CGContextSetLineWidth(ctx, 5);
    
    //5.渲染
    // 设置绘制模式（kCGPathFillStroke - 填充+描表）
    CGContextDrawPath(ctx, kCGPathFillStroke);
}


#pragma makr - 画一个矩形
- (void) drawRectangle{
    //1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //2.拼接路径
    
    // 利用UIBezierPath自带的方法绘制矩形
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(20, 70, 100, 100)];
    
    // 利用UIBezierPath自带的方法绘制圆角矩形
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 10, 50, 50) cornerRadius:5];
    
    
    //3.把路径添加到上下文当中
    CGContextAddPath(ctx, path.CGPath);
    CGContextAddPath(ctx, path2.CGPath);
    
    //4.设置路径属性
    [[UIColor redColor] setFill];
    [[UIColor greenColor] setStroke];
    CGContextSetLineWidth(ctx, 5);
    
    //5.渲染
    // 设置绘制模式（kCGPathFillStroke - 填充+描表）
    CGContextDrawPath(ctx, kCGPathFillStroke);

}


#pragma mark - 画一个圆
- (void)drawCircle{
    //1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //2.拼接路径
    
    // 利用UIBezierPath自带的方法绘制圆形
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 180, 180)];
    
    //3.把路径添加到上下文当中
    CGContextAddPath(ctx, path.CGPath);
    
    //4.设置路径属性
    [[UIColor redColor] setFill];
    [[UIColor greenColor] setStroke];
    CGContextSetLineWidth(ctx, 2);
    
    //5.渲染
    // 设置绘制模式（kCGPathFillStroke - 填充+描表）
    CGContextDrawPath(ctx, kCGPathFillStroke);
}

#pragma mark - 画一个半圆
- (void)drawHalfCircle{
    //1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //2.拼接路径
    
    // 利用UIBezierPath自带的方法绘制圆弧
    CGPoint center = CGPointMake(90, 125);
    CGFloat radius = 80;
    CGFloat startA = 0;
    CGFloat endA = M_PI;
    

    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:NO];
    
    
    //3.把路径添加到上下文当中
    CGContextAddPath(ctx, path.CGPath);
    
    //4.设置路径属性
    [[UIColor redColor] setFill];
    [[UIColor greenColor] setStroke];
    CGContextSetLineWidth(ctx, 2);
    
    //5.渲染
    // 设置绘制模式（kCGPathFillStroke - 填充+描表）
    CGContextDrawPath(ctx, kCGPathFillStroke);

}

#pragma mark - 画一个1/4圆
- (void)drawFourCircle{
    //1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //2.拼接路径
    
    // 利用UIBezierPath自带的方法绘制圆弧
    CGPoint center = CGPointMake(90, 50);
    CGFloat radius = 80;
    CGFloat startA = 0;
    CGFloat endA = M_PI_2;
    
    
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
    
    [path addLineToPoint:center];
    [path closePath];
    
    //3.把路径添加到上下文当中
    CGContextAddPath(ctx, path.CGPath);
    
    //4.设置路径属性
    [[UIColor redColor] setFill];
    [[UIColor greenColor] setStroke];
    CGContextSetLineWidth(ctx, 2);
    
    //5.渲染
    CGContextFillPath(ctx);
}

@end
