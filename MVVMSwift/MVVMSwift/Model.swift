import Foundation
import SwiftyJSON
class Model: NSObject {
    
    var nameStr : String?
    var classStr : String?
    
    func handleData(dict:JSON){
      nameStr = dict["name"].stringValue
        
    }
}
