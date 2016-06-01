//
//  ChoiceTableViewCell.swift
//  BookReview
//
//  Created by xjc on 16/5/22.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class ChoiceTableViewCell: UITableViewCell {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var sendTime: UILabel!
    @IBOutlet weak var contentLab: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.userImage.layer.cornerRadius = self.userImage.layer.bounds.height/2
        self.userImage.layer.masksToBounds = true
        
        self.bottomView.layer.cornerRadius = 3
        self.bottomView.layer.masksToBounds = true
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
