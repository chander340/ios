import Foundation
import Alamofire
import SwiftyJSON

class ModelVC: NSObject{
    var StudentList = {() -> () in}
    var modelobj = [Model ]()
    var jsonData = JSON()
    
    func hitapi(){
        let url = "https://raw.githubusercontent.com/abheesheksharma/iospublic/master/fetch.json"
        Alamofire.request(url).responseJSON { (data) in
            if data.result.value != nil{
                self.jsonData = JSON(data.result.value as Any)
                for i in 0...self.jsonData.count-1{
                    let modelViewobj = Model()
                    modelViewobj.handleData(dict: self.jsonData[i])
                    self.modelobj.append(modelViewobj)
                }
                self.StudentList()
            }else{
             print("error")
            }
        }
        
        
        
        
    }
    
    
    }
    
    
    
    
    
    


