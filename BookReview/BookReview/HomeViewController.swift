//
//  HomeViewController.swift
//  BookReview
//
//  Created by xjc on 16/4/30.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var pageMenu:CAPSPageMenu?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBarHidden = true 
        
        var controllerArray:[UIViewController] = []
        
        let FocusVC = FocusViewController()
        FocusVC.title = "关注"
        controllerArray.append(FocusVC)
        let ChoiceVC = ChoiceViewController()
        ChoiceVC.title = "精选"
        controllerArray.append(ChoiceVC)
        
        
        let parameters: [CAPSPageMenuOption] = [
            .ScrollMenuBackgroundColor(UIColor.whiteColor()),
            .ViewBackgroundColor(UIColor.whiteColor()),
            .SelectionIndicatorColor(UIColor.orangeColor()),
            .SelectedMenuItemLabelColor(UIColor.grayColor()),
            .UnselectedMenuItemLabelColor(UIColor.grayColor()),
            .BottomMenuHairlineColor(UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 80.0/255.0, alpha: 1.0)),
            .UseMenuLikeSegmentedControl(true),
            .MenuItemFont(UIFont.boldSystemFontOfSize(16)),
            .MenuHeight(45.0),
            .MenuItemWidth(SCREEN_WIDTH/2),
            .CenterMenuItems(true)
        ]
        
        self.pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 20.0, self.view.frame.width, self.view.frame.height-20), pageMenuOptions: parameters)
        //self.addChildViewController(self.pageMenu!)     //注释后使其不出现SrcollView
        self.view.addSubview(self.pageMenu!.view)
        
        self.pageMenu?.didMoveToParentViewController(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
