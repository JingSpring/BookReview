//
//  FocusTableViewCell.swift
//  BookReview
//
//  Created by xjc on 16/5/22.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class FocusTableViewCell: UITableViewCell {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var SendTime: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var bookType: UILabel!
    @IBOutlet weak var LoveBtn: UIButton!
    @IBOutlet weak var ShareBtn: UIButton!
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var BookCover: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.userImage.layer.cornerRadius = self.userImage.layer.bounds.height/2
        self.userImage.layer.masksToBounds = true
        
        self.bottomView.layer.cornerRadius = 3
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func LoveBtnClicked(sender: AnyObject) {
    }
    @IBAction func ShareBtnClicked(sender: AnyObject) {
    }
}
