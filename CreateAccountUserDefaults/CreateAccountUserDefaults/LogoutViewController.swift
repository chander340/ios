//
//  LogoutViewController.swift
//  CreateAccountUserDefaults
//
//  Created by Training on 02/11/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class LogoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnLogout(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    


}
