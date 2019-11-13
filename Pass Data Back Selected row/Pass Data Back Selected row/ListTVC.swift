//
//  ListTVC.swift
//  Pass Data Back Selected row
//
//  Created by trainee on 07/10/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ListTVC: UITableViewCell {

    @IBOutlet weak var lblShowName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
