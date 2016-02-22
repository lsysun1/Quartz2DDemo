//
//  Q2DBaseLineView.m
//  Quartz2D
//
//  Created by 李松玉 on 16/2/22.
//  Copyright © 2016年 李松玉. All rights reserved.
//

#import "Q2DBaseLineView.h"

@implementation Q2DBaseLineView



/**
 *  当该视图第一次显示在屏幕的上的时候会调用（并不是在视图初始化的调用）
 *  作用:绘图
 *  @param rect self.bounds
 */
- (void)drawRect:(CGRect)rect{

  
}




#pragma mark - 画会转弯一条线
- (void)drawLine:(CGRect)rect{
    
    //1.取得图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //2.设置绘图信息
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    //  设置起点
    [path moveToPoint:CGPointMake(0, 0)];
    
    //  设置路径点
    [path addLineToPoint:CGPointMake(rect.size.width / 2, rect.size.height / 2)];
    [path addLineToPoint:CGPointMake(rect.size.width,0)];
    
    //3.把路径添加到上下文当中
    CGContextAddPath(ctx, path.CGPath);
    
    //4.把上下文渲染到视图
    CGContextStrokePath(ctx);

}

#pragma mark - 通过两条Path画两条线
- (void)drawTwoLine:(CGRect)rect{
    //1.取得图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //2.设置绘图信息
    UIBezierPath *path1 = [UIBezierPath bezierPath];
    
    //  设置起点
    [path1 moveToPoint:CGPointMake(0, rect.size.height / 2)];
    
    //  设置路径点
    [path1 addLineToPoint:CGPointMake(rect.size.width, rect.size.height / 2)];
    
    //  新建一条Path
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    //  设置起点
    [path2 moveToPoint:CGPointMake(10, 10)];
    
    //  设置路径点
    [path2 addLineToPoint:CGPointMake(75,75)];
    
    
    //3.把路径添加到上下文当中
    CGContextAddPath(ctx, path1.CGPath);
    CGContextAddPath(ctx, path2.CGPath);
    
    //4.把上下文渲染到视图
    CGContextStrokePath(ctx);
}


#pragma mark - 设置绘图状态
- (void)drawLineStatus:(CGRect)rect{
    //1.取得图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //2.设置绘图信息
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    //  设置起点
    [path moveToPoint:CGPointMake(10, rect.size.height / 2)];
    
    //  设置路径点
    [path addLineToPoint:CGPointMake(rect.size.width - 20, rect.size.height / 2)];
    
    
    //3.把路径添加到上下文当中
    CGContextAddPath(ctx, path.CGPath);
    
    //4.设置绘图状态
    //  设置线宽
    CGContextSetLineWidth(ctx, 10);
    
    //  设置线条终点形状
    CGContextSetLineCap(ctx, kCGLineCapRound);
    
    //  设置线条颜色
    [[UIColor redColor] set];
    
    //4.把上下文渲染到视图
    CGContextStrokePath(ctx);
}


#pragma mark - 画半个椭圆
- (void)drawHalfRound:(CGRect)rect{
    CGContextRef ctx   = UIGraphicsGetCurrentContext();
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    CGPoint startPoint   = CGPointMake(0,rect.size.height / 2);
    CGPoint endPoint     = CGPointMake(rect.size.width,rect.size.height/2);
    CGPoint controlPoint = CGPointMake(rect.size.width/2, 0);
    
    [path moveToPoint:startPoint];
    [path addQuadCurveToPoint:endPoint controlPoint:controlPoint];
    
    CGContextAddPath(ctx, path.CGPath);
    
    CGContextStrokePath(ctx);
}


@end
