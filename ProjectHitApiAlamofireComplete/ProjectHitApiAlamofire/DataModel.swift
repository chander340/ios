import Foundation
import Alamofire
import SwiftyJSON

class DataModel : NSObject {
    
    var idStr = Int()
    var titileStr  = String()
    
    func handleData(_ dict : NSDictionary){
        idStr = dict["id"] as? Int ?? 0
        titileStr = dict["title"] as? String ?? ""
    }

}
