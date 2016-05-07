//
//  HeaderView.swift
//  BookReview
//
//  Created by xjc on 16/5/7.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    
    var lineView:LineView!

    var View_Width:CGFloat!
    var View_Height:CGFloat!
    
    var userName:UILabel?
    var shareButton:UIButton?
    var settingButton:UIButton?
    var userImageBtn:UIButton?
    var imageBackground:UIImageView?
    
    /**
     初始化view
     */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.View_Width = frame.size.width
        self.View_Height = frame.size.height
        self.backgroundColor = UIColor.whiteColor()
        
        self.imageBackground = UIImageView(frame: CGRectMake(0, 0, View_Width, View_Height))
        self.imageBackground?.image = UIImage(named: "bg")
        self.imageBackground?.userInteractionEnabled = true    //imageBackground可交互
        self.addSubview(self.imageBackground!)
        
        
        self.userImageBtn = UIButton(frame: CGRectMake(View_Width/2-70/2,View_Height-150,75,75))
        self.userImageBtn?.layer.cornerRadius = 75/2
        self.userImageBtn?.layer.masksToBounds = true
        self.userImageBtn?.backgroundColor = UIColor.greenColor()
        self.userImageBtn?.setImage(UIImage(named: "Avatar"), forState: .Normal)
        self.imageBackground?.addSubview(self.userImageBtn!)

        self.shareButton = UIButton(frame: CGRectMake(30,View_Height-80,50,50))
        self.shareButton?.setImage(UIImage(named: "pic_myqrcode_share_img"), forState: .Normal)
        self.imageBackground?.addSubview(self.shareButton!)
        
        self.userName = UILabel(frame: CGRectMake(View_Width/2-50,View_Height-70,100,30))
        self.userName?.text = "jinhui"
        self.userName?.textAlignment = .Center
        self.userName?.textColor = UIColor.blackColor()
        self.imageBackground?.addSubview(self.userName!)
        
        self.settingButton = UIButton(frame: CGRectMake(View_Width-65,View_Height-80,50,50))
        self.settingButton?.setImage(UIImage(named: "ic_love_action"), forState: .Normal)
        self.imageBackground?.addSubview(self.settingButton!)
        
        
        self.lineView = LineView(frame: CGRectMake(0,View_Height-38,View_Width,38))
        self.imageBackground?.addSubview(self.lineView!)
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func drawRect(rect: CGRect) {
        
    }

}
