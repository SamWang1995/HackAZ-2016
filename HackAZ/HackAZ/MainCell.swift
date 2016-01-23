//
//  MainCell.swift
//  HackAZ
//
//  Created by Samuel Wang on 1/23/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {
    
    
    @IBOutlet weak var course: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet var content: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}