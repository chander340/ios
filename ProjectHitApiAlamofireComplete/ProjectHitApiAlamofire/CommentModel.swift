import Foundation
class CommentModel : NSObject {
var idStr = Int()
var someCommentsStr = String()
    func handleCommentData(_ dict : NSDictionary) {
        idStr = dict["id"] as? Int ?? 0
        someCommentsStr = dict["body"] as? String ?? ""
        
        
    }
    
    
}
