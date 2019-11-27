//
//  ViewController.swift
//  JsonFetchAlamofire
//
//  Created by trainee on 08/08/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    @IBOutlet weak var jsonTableView: UITableView!
    var jsonData = JSON()
    var modelViewArr = [ModelView]()
    
    var modelViewSectionArr = [ModelView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        
    }
    
    func getData(){
        let url = "https://raw.githubusercontent.com/abheesheksharma/iospublic/master/fetch.json"
        
        Alamofire.request(url).responseJSON { (data) in
            if (data.result.value != nil){
                self.jsonData = JSON(data.result.value as Any)
                
                for i in 0...self.jsonData.count-1{
                    let modelViewObj = ModelView()
                    
                    modelViewObj.handelData(self.jsonData[i])
                    
                    self.modelViewArr.append(modelViewObj)
                }
                
                self.jsonTableView.reloadData()
            }else{
                print("error")
            }
        }
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelViewArr[section].friendModelObjArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = jsonTableView.dequeueReusableCell(withIdentifier: "JSONTableViewCell", for: indexPath) as! JSONTableViewCell
        let cellDict = modelViewArr[indexPath.section].friendModelObjArr[indexPath.row]
        cell.friend1Lbl.text = cellDict.friendStr
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return modelViewArr.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return modelViewArr[section].nameStr
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}

