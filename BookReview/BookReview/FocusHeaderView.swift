//
//  FocusHeaderView.swift
//  BookReview
//
//  Created by xjc on 16/5/22.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class FocusHeaderView: UIView {
    
    var View_Width:CGFloat!
    var View_Height:CGFloat!
    
    var BookImage:UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.View_Width = frame.size.width
        self.View_Height = frame.size.height
        
        self.BookImage = UIImageView(frame: CGRectMake(0, 0, View_Width, View_Height))
        self.BookImage.image = UIImage(named: "bg")
        self.BookImage.userInteractionEnabled = true
        
        self.addSubview(self.BookImage)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func drawRect(rect: CGRect) {
        // Drawing code
    }

}
