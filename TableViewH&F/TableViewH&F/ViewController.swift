//
//  ViewController.swift
//  TableViewH&F
//
//  Created by Training on 26/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    let sectionsArr = ["Uinion Territories","States","Mega Cities"]
    
    let itemsArr = [
    ["Andaman and Nicobar","Dadra and Nagar haveli","Lakshadweep","Puducherry","Chandigarh","Daman and Diue","New Delhi"], // Uinion Territories
        ["A.P","A.P","ASSAM","BH","CHG","GR","GOA","HRN","H.P","JRK","J&K","KTK","KL","MH","M.P","MJR","MNP","MGL","NGL","ODISHA","PB","RJ","SIKKIM","T.S","T.N","TPR","U.K","U.P","W.B"], // States
        ["Mumbai","New Delhi","Kolkata","Chennai","Bangalore","Hyderabad","Ahamadabad","Pune"], // Mega Cities
    ]
  
    
    @IBOutlet weak var tblData: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "END"
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
      
        return 30
    }
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
    
        view.tintColor = .green
    }
  
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return "INDIA"
    }

    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sectionsArr.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemsArr[section].count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.lblText!.text = itemsArr [indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.white
        
    }
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let view = UIView()
//     view.backgroundColor = UIColor.white
//        return view
//
    }
        


