import Foundation
class ProfileModel : NSObject {
    var idNameStr = String()

    func handleData(_ dict : NSDictionary ){
         idNameStr = dict["body"] as? String ?? ""
        
        
    }
    
    
    
    
    
}
