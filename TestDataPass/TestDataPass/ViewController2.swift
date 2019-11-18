//
//  ViewController2.swift
//  TestDataPass
//
//  Created by trainee on 18/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var txtFldName2: UITextField!
    @IBOutlet weak var txtFldRollNum2: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear2")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear2")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear2")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear2")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFldName2.text! = objSaveModel.nameVal
        txtFldRollNum2.text! = objSaveModel.rollNoVal
     
    }
}
