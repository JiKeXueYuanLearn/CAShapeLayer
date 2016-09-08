//
//  ViewController.m
//  CAShapeLayerOC
//
//  Created by QingMingZhang on 16/9/8.
//  Copyright © 2016年 极客栈. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 创建椭圆形贝塞尔曲线
    UIBezierPath *oval = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 200, 100)];
    
    // 创建矩形贝塞尔曲线
    UIBezierPath *rect = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 200, 100)];
    
    // 创建圆形贝塞尔曲线
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    
    // 创建CAShapeLayer
    CAShapeLayer *shape = [CAShapeLayer layer];
    shape.frame = CGRectMake(0, 0, 200, 100);
    shape.position = self.view.center;
    
    // 显示CAShapeLayer的边界
    shape.borderWidth = 1.0f;
    
    // 禁止内容显示超出CAShapeLayer的frame值(即: 超出部分裁剪掉)
    shape.masksToBounds = true;
    
    shape.backgroundColor = [UIColor yellowColor].CGColor;
    shape.fillColor = [UIColor orangeColor].CGColor;
    
    // 建立贝塞尔曲线与CAShapeLayer之间的关系
//    shape.path = oval.CGPath;
//    shape.path = rect.CGPath;
    shape.path = circle.CGPath;
    
    // 添加并显示
    [self.view.layer addSublayer:shape];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
