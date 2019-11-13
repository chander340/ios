//
//  HeaderandFooter.swift
//  TableViewH&F
//
//  Created by Training on 26/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class HeaderandFooter: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tblData: UITableView!
    let sectionsArr = ["HOLLYWOOD","BOLLYWOOD","TOLLYWOOD"]
    let itemsArr = [
        ["Avatar","Titanic","Harryporter","Avangers","The Hulk","Thore","Captain America"], // TOLLYWOOD
        ["Krish","Dhoom","Ek Tha Tiger","Koi Milgaya","Chennai Express","Padmavathi","3Idiots","Golmal","Oh My God"], // BOLLYWOOD
        ["Bahubali","Magadeera","Saho","Syira Narasimha Reddy","Valmiki","Chalo","Orange","DJ","Bunny","Balu"], // TOLLYWOOD
        
        ]
   
    let titleArr = ["English","Hindi","Telugu"]
    
    var selectedSection = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return sectionsArr.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if  selectedSection == section{
            return itemsArr[section].count
        }else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HandFCell", for: indexPath) as! HandFCell
        
        cell.lblText!.text = itemsArr [indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let vwHeader = UIView(frame: CGRect(x: 200, y: 50, width: tableView.frame.size.width, height: 18))
        let label = UILabel(frame: CGRect(x: 5, y: 5, width: tableView.frame.size.width / 2, height: 50))
        let buttonArraw = UIButton(frame: CGRect(x: tableView.frame.size.width / 2, y: 5, width: tableView.frame.size.width / 4, height: 50))
        buttonArraw.setTitle("Touch me", for: .normal)
        buttonArraw.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
//        buttonArraw.alignmentRectInsets = .center
         buttonArraw.setTitleColor(.white, for: .normal)
        // buttonArraw.tintColor = .black
        buttonArraw.addTarget(self, action: #selector(openRows), for: .touchUpInside)
        buttonArraw.tag = section
        label.text = sectionsArr[section]
        label.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
        vwHeader.addSubview(label)
        vwHeader.addSubview(buttonArraw)
        return vwHeader
    }
    
//    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        if section == 0 {
//            return "English"
//        }else if section == 1 {
//            return "Hindi"
//        }else{
//            return "Telugu"
//        }
//    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return self.sectionsArr[section]
//    }
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let vwHeader = UIView(frame:  CGRect(x: 0, y: 50, width: tableView.frame.size.width, height: 20))
        let lblText = UILabel(frame: CGRect(x: 180, y: 5, width: 200, height: 20))
        lblText.text = titleArr[section]
        lblText.textColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
      vwHeader.addSubview(lblText)
        return vwHeader
        
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    @objc func openRows(_ sender: UIButton) {
        
        selectedSection = sender.tag
        tblData.reloadData()
    }

}
