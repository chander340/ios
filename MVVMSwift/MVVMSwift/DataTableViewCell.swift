//
//  DataTableViewCell.swift
//  MVVMSwift
//
//  Created by test on 12/08/19.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {
    @IBOutlet var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
