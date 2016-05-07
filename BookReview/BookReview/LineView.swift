//
//  LineView.swift
//  BookReview
//
//  Created by xjc on 16/5/7.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class LineView: UIView {

    
    var titleArray = ["我的书评","我的评论","我的收藏"]
    
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextSetRGBStrokeColor(context, 255/255, 255/255, 255/255, 0.3)
        CGContextSetLineWidth(context, 0.5)
        
        for var i = 1; i <= 2; i++ {
            CGContextMoveToPoint(context, (CGFloat)(i)*rect.width/3, 10)
            CGContextAddLineToPoint(context, (CGFloat)(i)*rect.width/3, rect.height - 10)
        }
        
        CGContextMoveToPoint(context, 0, 5)
        CGContextAddLineToPoint(context, rect.width, 5)
        
        CGContextMoveToPoint(context, 0, rect.height-5)
        CGContextAddLineToPoint(context, rect.width, rect.height - 5)
        
        CGContextStrokePath(context)
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(colorLiteralRed: 0.0, green: 0.0, blue: 0.0, alpha: 0.3)
        
        for var i = 0; i<3;i++ {
            let button = UIButton(frame: CGRectMake((CGFloat)(i) * frame.width / 3,frame.height / 3,frame.width / 3,frame.height / 3*2))
            button.setTitle(titleArray[i], forState: .Normal)
            button.tag = i
            button.tintColor = UIColor.blackColor()
            self.addSubview(button)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
