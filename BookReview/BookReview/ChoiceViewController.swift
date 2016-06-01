//
//  ChoiceViewController.swift
//  BookReview
//
//  Created by xjc on 16/4/30.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.tableView = UITableView(frame: CGRectMake(0, 0, self.view.bounds.width, self.view.bounds.height), style: .Plain)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.backgroundColor = UIColor(red: 0xf0/255, green: 0xf0/255, blue: 0xf0/255, alpha: 1)
        self.tableView.separatorStyle = .None     //去除单元格分隔线
        
        self.tableView.registerNib(UINib(nibName: "ChoiceTableViewCell", bundle: nil), forCellReuseIdentifier: "cCell")
        self.view.addSubview(self.tableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     *  UITableViewDelegate,UITableViewDataSource
     */
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cCell") as! ChoiceTableViewCell
        
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 110
    }

    
}
