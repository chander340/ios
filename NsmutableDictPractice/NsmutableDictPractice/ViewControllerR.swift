//
//  ViewControllerR.swift
//  NsmutableDictPractice
//
//  Created by Training on 09/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewControllerR: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldClass: UITextField!
    @IBOutlet weak var txtFldRoll: UITextField!
    @IBOutlet weak var txtFldMob: UITextField!
    @IBOutlet weak var tblVw: UITableView!
    
    
    
    var arrData = NSMutableArray()
    var selectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblVw.delegate = self
        tblVw.dataSource = self
        
    
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var actionSave: UIButton!
    
    @IBAction func moveAction(_ sender: Any) {
        let dictData = NSMutableDictionary()
        dictData.setValue(txtFldName.text, forKey: "Name")
        dictData.setValue(txtFldClass.text, forKey: "Class")
        dictData.setValue(txtFldRoll.text, forKey: "Roll")
        dictData.setValue(txtFldMob.text, forKey: "Mobile")
        if selectedIndex == -1 {
            print ("Dictionary",dictData)
            arrData.add(dictData)
            //            arrData.add(dictData)
            print("Array",arrData)
            tblVw.reloadData()
            txtFldName.text = ""
            txtFldClass.text = ""
            txtFldRoll.text = ""
            txtFldMob.text = ""
        }else {
            arrData[selectedIndex] = dictData
            tblVw.reloadData()
            selectedIndex = -1
            
            
            txtFldName.text = ""
            txtFldClass.text = ""
            txtFldRoll.text = ""
            txtFldMob.text = ""
        }
        
    }
 func getparticularDictValue() {
      if let dictVal = arrData[0] as? NSMutableDictionary {
       _ = dictVal["Address"] as? String ?? "No Address"
            
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        
        if let dictVal = arrData[indexPath.row] as? NSMutableDictionary {
            let nameVal = dictVal["Name"] as? String ?? "No Name"
            let classVal = dictVal["Class"] as? String ?? "No Class"
            let rollVal = dictVal["Roll"] as? String ?? "No Roll"
            let mobileVal = dictVal["Mobile"] as? String ?? "No Mobile"
            //
          cell!.lblName.text = nameVal
            cell!.lblClass.text = classVal
           cell!.lblRoll.text = rollVal
           cell!.lblMobile.text = mobileVal
            
            
        }
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.row
        
        if let dictVal = arrData[indexPath.row] as? NSMutableDictionary{
            let nameVal = dictVal["Name"] as? String ?? "No Name"
            let classVal = dictVal["Class"] as? String ?? "No Class"
            let rollVal = dictVal["Roll"] as? String ?? "No Roll"
            let mobileVal = dictVal["Mobile"] as? String ?? "No Mobile"
            
            txtFldName.text = nameVal
            txtFldClass.text = classVal
            txtFldRoll.text = rollVal
            txtFldMob.text = mobileVal
            
            
            
        }
        
    }
}
