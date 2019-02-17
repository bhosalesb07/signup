//
//  TableViewCell.swift
//  signup
//
//  Created by Mac on 16/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var lblname: UILabel!
    
    @IBOutlet weak var lblemail: UILabel!
    
    @IBOutlet weak var lbldate: UILabel!
    @IBOutlet weak var lblplace: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
