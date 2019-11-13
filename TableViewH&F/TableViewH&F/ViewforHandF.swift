//
//  ViewforH&F.swift
//  TableViewH&F
//
//  Created by Training on 27/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewforHandF: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var tblVwData: UITableView!
 
    
    let sectionsArr = ["Rainbow","Coastal Areas","Union Territories"]
    let itemsArr = [
        ["Violet","Indigo","Blue","Green","Yellow","Orange","Red"],
        ["Gujarat","Andhra Pradesh","Tamilnadu","WestBengal","Maharastra","Kerala","Orissa","Karnataka","Goa"],
        ["Chandigarh","New Delhi","Puducherry","Andaman and Nicobar","Daman and Diue","Lakshadweep","DadranagarHaveli"],
        ]
    
    let footerArr = ["7 Colores","9 States","7 Uinion Territories"]
    
    var selectedSection = 0
    
    
    
override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        if  selectedSection == section{
            return itemsArr[section].count
        }else{
             return 0
        }
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderFooterCell", for: indexPath) as! HeaderFooterCell
        cell.lblText!.text = itemsArr[indexPath.section][indexPath.row]
    return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vwHeader = UIView(frame: CGRect(x: 150, y: 50, width: tableView.frame.size.width, height: 18))
        let lblText = UILabel(frame: CGRect(x: 5, y: 5, width: tableView.frame.size.width-100, height: 50))
        let buttonArraw = UIButton(frame: CGRect(x: 100, y: 5, width: tableView.frame.size.width, height: 50))
         buttonArraw.setTitle("Open", for: .normal)
        buttonArraw.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
          buttonArraw.setTitleColor(.white, for: .normal)
       // buttonArraw.tintColor = .black
        buttonArraw.addTarget(self, action: #selector(openRows), for: .touchUpInside)
        buttonArraw.tag = section
        lblText.text = sectionsArr[section]
        lblText.textAlignment = .center

        lblText.font = lblText.font.withSize(50)
        lblText.backgroundColor = #colorLiteral(red: 1, green: 0.1085414729, blue: 0.07454687816, alpha: 1)
        lblText.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        
         vwHeader.addSubview(buttonArraw)
        vwHeader.addSubview(lblText)
         return vwHeader
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let vwHeader = UIView(frame:  CGRect(x: 150, y: 50, width: tableView.frame.size.width, height: 18))
        let lblText = UILabel(frame: CGRect(x: 5, y: 5, width: tableView.frame.size.width, height: 50))
        lblText.text = footerArr[section]
        lblText.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        lblText.font = lblText.font.withSize(50)
        lblText.backgroundColor = #colorLiteral(red: 0.2789574619, green: 0.7713596353, blue: 0.8336067523, alpha: 1)
        lblText.textAlignment = .center

        vwHeader.addSubview(lblText)
        return vwHeader
        
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    
    @objc func openRows(_ sender: UIButton) {
    
        selectedSection = sender.tag
        tblVwData.reloadData()
        
        
    }
    
    
    


}
