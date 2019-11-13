//
//  ViewController2.swift
//  NSMutableDictionary
//
//  Created by trainee on 11/07/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBOutlet weak var showName: UILabel!
    
    @IBOutlet weak var showClass: UILabel!
    
    @IBOutlet weak var showRn: UILabel!
    
    @IBOutlet weak var showDepartment: UILabel!
    
    
    var printName = String()
    var printClass = String()
    var printRn = String()
    var printDp = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showName.text = printName
        showClass.text = printClass
        showRn.text = printRn
        showDepartment.text = printDp

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
