//
//  HomeViewController.swift
//  BookReview
//
//  Created by xjc on 16/4/30.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    

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
        
    }
    
    func pushToFocus() {
        let focusVC = FocusViewController()
        self.navigationController?.presentViewController(focusVC, animated: true, completion: { () -> Void in
            
        })
    }
    
    func pushToChoice() {
        let choiceVC = ChoiceViewController()
        self.navigationController?.presentViewController(choiceVC, animated: true, completion: { () -> Void in
            
        })
    }
    
}
