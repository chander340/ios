//
//  ModelView.swift
//  JsonFetchAlamofire
//
//  Created by trainee on 08/08/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

class ModelView: NSObject{
    
    var nameStr = String()
    var friendModelObjArr = [FriendModel]()
    
    func handelData(_ dict : JSON) {
        
        nameStr = dict["name"].stringValue
       
            for j in 0..<dict["friends"].count{
        
            let friendModelObj = FriendModel()
            friendModelObj.handelFriendData(dict["friends"][j])
            self.friendModelObjArr.append(friendModelObj)
            
        }
        
    }
}

class FriendModel{
    
    var friendStr : String?
    
    func handelFriendData(_ dict : JSON){
        friendStr = dict["name"].stringValue
    }
}







