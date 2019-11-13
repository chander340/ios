//
//  Viewforheader.swift
//  TableViewH&F
//
//  Created by Training on 26/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class Viewforheader: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    
    @IBOutlet weak var tblData: UITableView!
    
    let sectionsArr = ["HOLLYWOOD","BOLLYWOOD","TOLLYWOOD"]
    let itemsArr = [
        ["Avatar","Titanic","Harryporter","Avangers","The Hulk","Thore","Captain America"], // TOLLYWOOD
        ["Krish","Dhoom","Ek Tha Tiger","Koi Milgaya","Chennai Express","Padmavathi","3Idiots","Golmal","Oh My God"], // BOLLYWOOD
        ["Bahubali","Magadeera","Saho","Syira Narasimha Reddy","Valmiki","Chalo","orange","DJ","Bunny","Balu"], // TOLLYWOOD
]

    override func viewDidLoad() {
        super.viewDidLoad()



}
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "End"
        
        
//        if section == 0 {
//            return "English"
//        }else if section == 1 {
//            return "Hindi"
//        }else{
//            return "Telugu"
//        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 30
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return self.sectionsArr[section]
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sectionsArr.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemsArr[section].count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        
        cell.lblText!.text = itemsArr [indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        
    }
        func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
    
            view.tintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        <#code#>
    }
//
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
//    view.tintColor = UIColor.blue
//}


