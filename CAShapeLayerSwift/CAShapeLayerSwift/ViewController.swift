//
//  ViewController.swift
//  CAShapeLayerSwift
//
//  Created by QingMingZhang on 16/9/8.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 创建椭圆形贝塞尔曲线
        let oval = UIBezierPath.init(ovalInRect: CGRectMake(0, 0, 200, 100))
        
        // 创建矩形贝塞尔曲线
        let rect = UIBezierPath.init(rect: CGRectMake(0, 0, 200, 100))
        
        // 创建圆形贝塞尔曲线
        let circle = UIBezierPath.init(ovalInRect: CGRectMake(0, 0, 100, 100))
        // 创建CAShapeLayer
        let shape = CAShapeLayer()
        shape.frame = CGRectMake(0, 0, 200, 100)
        shape.position = self.view.center
        
        // 显示CAShapeLayer的边界
        shape.borderWidth = 1.0
        
        // 禁止内容显示超出CAShapeLayer的frame值(即: 超出部分裁剪掉)
        shape.masksToBounds = true
        
        shape.backgroundColor = UIColor.yellowColor().CGColor
        shape.fillColor = UIColor.orangeColor().CGColor
        
        // 建立贝塞尔曲线与CAShapeLayer之间的关系
//            shape.path = oval.CGPath
//            shape.path = rect.CGPath
        shape.path = circle.CGPath
        
        // 添加并显示
        self.view.layer.addSublayer(shape)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

