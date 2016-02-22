//
//  Q2DBaseDrawViewControlerr.m
//  Quartz2D
//
//  Created by 李松玉 on 16/2/22.
//  Copyright © 2016年 李松玉. All rights reserved.
//

#import "Q2DBaseDrawViewControlerr.h"
#import "Q2DBaseLineView.h"
#import "Q2DShapeView.h"


@implementation Q2DBaseDrawViewControlerr

- (void)viewDidLoad{
    [super viewDidLoad];
    
//    Q2DBaseLineView *baseView = [[Q2DBaseLineView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
//    baseView.center = self.view.center;
//    baseView.backgroundColor = [UIColor lightGrayColor];
    
    Q2DShapeView *shapeView = [[Q2DShapeView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    shapeView.center = self.view.center;
    shapeView.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:shapeView];
}


@end
