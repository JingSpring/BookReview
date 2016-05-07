//
//  HomeViewController.swift
//  BookReview
//
//  Created by xjc on 16/4/30.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var navigationView:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
        self.setNavigationBar()
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     设置导航栏
     */
    func setNavigationBar() {
        navigationView = UIView(frame: CGRectMake(0,-20,SCREEN_WIDTH,65))
        navigationView.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.addSubview(navigationView)
        
        let focusBtn = UIButton(type: .System)
        focusBtn.frame = CGRectMake(10, 20, SCREEN_WIDTH/2, 44)
        focusBtn.setTitle("关注", forState: .Normal)
        focusBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        focusBtn.addTarget(self, action: Selector("pushToFocus"), forControlEvents: .TouchUpInside)
        
        navigationView.addSubview(focusBtn)
    }
    
    func pushToFocus() {
        
    }
    
    func pushToChoice() {
        
    }
    
}
