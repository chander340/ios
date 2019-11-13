//
//  ViewControllerPr1.swift
//  TableViewH&F
//
//  Created by Training on 30/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewControllerPr1: UIViewController,UITableViewDelegate,UITableViewDataSource {
   

    let sectionsArr = ["Gopal","KIshore"]
    
    let itemsArr = [
        ["Z.P.H.SL","Govt Jr CLG","T.G.L.G.POLY","Priyadarshini Eng clg"],
        ["Rajarajeswarai SL","T.G.L.G.POLY","Priyadarshini Eng clg"]
    ]
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsArr.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsArr[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellpr1", for: indexPath) as! TableViewCellpr1
        
        cell.lblText!.text = itemsArr[indexPath.section][indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return "sectionsArr.count"
}
}
