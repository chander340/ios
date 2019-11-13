//
//  TableViewCell.swift
//  NSMutableDictionary
//
//  Created by trainee on 10/07/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var rollnumberLbl: UILabel!
    @IBOutlet weak var classLbl: UILabel!
    @IBOutlet weak var departmentLbl: UILabel!
    @IBOutlet weak var editBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
