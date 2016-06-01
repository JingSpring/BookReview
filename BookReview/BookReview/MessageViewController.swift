//
//  MessageViewController.swift
//  BookReview
//
//  Created by xjc on 16/4/30.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0xf0/255, green: 0xf0/255, blue: 0xf0/255, alpha: 1)
        self.title = "通知"
        
        self.tableView = UITableView(frame: CGRectMake(0, 20, self.view.bounds.width, self.view.bounds.height), style: .Plain)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "mCell")
        self.view.addSubview(self.tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("mCell", forIndexPath: indexPath)
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        switch indexPath.row {
        case 0:
            cell.imageView?.image = UIImage(named: "paper_addPerson")
            cell.textLabel?.text = "新的粉丝"
        case 1:
            cell.imageView?.image = UIImage(named: "ic_love_action")
            cell.textLabel?.text = "赞"
        case 2:
            cell.imageView?.image = UIImage(named: "info_newpaper")
            cell.textLabel?.text = "通知"
        default:
            return UITableViewCell(frame: CGRectZero)
        }
        
        return cell
    }

}
