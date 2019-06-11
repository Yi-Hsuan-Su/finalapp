//
//  foodTableViewCell.swift
//  finalapp
//
//  Created by EA on 2019/6/10.
//  Copyright © 2019 EA. All rights reserved.
//

import UIKit

class foodTableViewCell: UITableViewCell {

    @IBOutlet weak var foodimg: UIImageView!
    @IBOutlet weak var foodname:UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
