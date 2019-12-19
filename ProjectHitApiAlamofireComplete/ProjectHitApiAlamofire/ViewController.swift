import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var lblProfile: UILabel!
    var objModel = [DataModel]()
    var objCommentModel  = [CommentModel]()
    var objProfileModel = [ProfileModel]()
    @IBOutlet weak var tblVwData: UITableView!
    
    var selectedBtn = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tblVwData.isHidden = true
        getData()
        tblVwData.reloadData()
        lblProfile.isHidden = true
  print(self.objProfileModel)
    
    }
    @IBAction func actionBtnShow(_ sender: UIButton) {
        selectedBtn = sender.tag
        if (sender.tag == 1)  || (sender.tag == 2){
            tblVwData.isHidden = false
            lblProfile.isHidden = true
            //  print("button2 pressed")
            
        }else{
            tblVwData.isHidden = true
            //  print( "abcd")
            // //lbl sHow
            lblProfile.isHidden = false
  //      lblProfile.text = objProfileModel["profile"][0]["id"]
        
        }
        tblVwData.reloadData()
    }
    
    func getData(){
        let url = "https://raw.githubusercontent.com/typicode/demo/master/db.json"
        Alamofire.request(url).responseJSON { (data) in
            
            if data.result.value != nil{
                let dict = data.result.value as? NSDictionary
                
                if let arrPosts = dict?["posts"] as? NSArray {
                    for i in 0..<arrPosts.count{
                        if let dictPost = arrPosts[i] as? NSDictionary {
                            let modelViewObj = DataModel()
                            modelViewObj.handleData(dictPost)
                            self.objModel.append(modelViewObj)
                        }
                    }
                }
                if let arrCommets = dict?["comments"] as? NSArray {
                    for j in 0..<arrCommets.count{
                        if let dictComments = arrCommets[j] as? NSDictionary{
                            let modelCommObj = CommentModel()
                            modelCommObj.handleCommentData(dictComments)
                            self.objCommentModel.append(modelCommObj)
                        }
                    }
                    //   self.tblVwData.reloadData()
                }
                
                
                if let arrCommets = dict?["profile"] as? NSDictionary {
                    for k in 0..<arrCommets.count{
                        if let dictComments = arrCommets[k] as? NSDictionary{
                            let modelCommObj = ProfileModel()
                            modelCommObj.handleData(dictComments)
                            self.objProfileModel.append(modelCommObj)
                   
                        }
                    }
                    //   self.tblVwData.reloadData()
                }
                
                
                
                self.tblVwData.reloadData()
            } else{
                print("error")
            }
            // self.tblVwData.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if selectedBtn == 1{
            return objModel.count
        }else {
            //COmmmentModel ARR
            
            return objCommentModel.count
            
        }
        
        //   return objCommentModel.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblVwData.dequeueReusableCell(withIdentifier: "TVCData", for: indexPath) as! TVCData
        if (selectedBtn == 1) {
            cell.LblId.text = "\(objModel[indexPath.row].idStr)"
            cell.LblName.text = objModel[indexPath.row].titileStr
        }else {
            cell.LblId.text = "\(objCommentModel[indexPath.row].idStr)"
            cell.LblName.text = objCommentModel[indexPath.row].someCommentsStr
        }
        
        // tblVwData.reloadData()
        //        cell.LblId.text = (" \(viewModelObj.dict[indexPath.row]["id"] )")
        //        cell.LblName.text = (" \(viewModelObj.dict[indexPath.row]["title"] )")
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
}

