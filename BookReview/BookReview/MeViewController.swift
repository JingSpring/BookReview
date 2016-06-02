//
//  MeViewController.swift
//  BookReview
//
//  Created by xjc on 16/4/30.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class MeViewController: UIViewController {
    
    var headerView:HeaderView!
    
    var pageMenu:CAPSPageMenu!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBarHidden = true
        
        //头视图
        self.headerView = HeaderView(frame: CGRectMake(0,0,SCREEN_WIDTH,180))
        self.view.addSubview(self.headerView)
        
        
        var controllerArray:[UIViewController] = []
        
        let bookReviewVC = MyBookReviewController()
        bookReviewVC.title = "我的书评"
        controllerArray.append(bookReviewVC)
        let commentVC = MyCommentController()
        commentVC.title = "我的评论"
        controllerArray.append(commentVC)
        let collectionVC = MyCollectionController()
        collectionVC.title = "我的收藏"
        controllerArray.append(collectionVC)
        
        
        let parameters: [CAPSPageMenuOption] = [
            .ScrollMenuBackgroundColor(UIColor(red: 87.0/255, green: 113.0/255, blue: 100.0/255, alpha: 1)),
            .ViewBackgroundColor(UIColor.grayColor()),
            .SelectionIndicatorColor(UIColor.orangeColor()),
            .SelectedMenuItemLabelColor(UIColor(red: 0.0/255, green: 175.0/255, blue: 193.0/255, alpha: 1)),
            .UnselectedMenuItemLabelColor(UIColor.whiteColor()),
            .BottomMenuHairlineColor(UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 80.0/255.0, alpha: 1.0)),
            .UseMenuLikeSegmentedControl(true),
            .MenuItemFont(UIFont.boldSystemFontOfSize(16)),
            .MenuHeight(30.0),
            .MenuItemSeparatorWidth(1),     //
            .MenuItemSeparatorColor(UIColor.whiteColor()), //
            .MenuItemWidth(SCREEN_WIDTH/3),
            .CenterMenuItems(true)
        ]
        
        self.pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 180.0, self.view.frame.width, self.view.frame.height-20), pageMenuOptions: parameters)
        //self.addChildViewController(self.pageMenu!)     //注释后使其不出现SrcollView
        self.view.addSubview(self.pageMenu!.view)
        
        self.pageMenu?.didMoveToParentViewController(self)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
