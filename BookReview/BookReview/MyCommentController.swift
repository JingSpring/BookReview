//
//  MyCommentController.swift
//  BookReview
//
//  Created by xjc on 16/6/2.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class MyCommentController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView = UITableView(frame: self.view.frame, style: .Plain)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     *  UITableViewDelegate UITableViewDataSource
     */
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        return cell
    }

}
