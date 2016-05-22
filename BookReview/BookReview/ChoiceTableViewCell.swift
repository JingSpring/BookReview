//
//  ChoiceTableViewCell.swift
//  BookReview
//
//  Created by xjc on 16/5/22.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

class ChoiceTableViewCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.userImage.layer.cornerRadius = self.userImage.layer.bounds.height/2
        self.userImage.layer.masksToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
