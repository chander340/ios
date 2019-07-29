import UIKit

class DetailVC: UIViewController {
    
    
    @IBOutlet weak var txtFldFather: UITextField!
    @IBOutlet weak var txtFldName: UITextField!
    
    var detailDict = NSMutableDictionary()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MODEL
       txtFldFather.text =    objUserModel.passwordVal
       txtFldName.text =    objUserModel.nameVal
        
        
//        //DICTIONARY
//         txtFldName.text = detailDict["name"] as! String
//        txtFldFather.text = detailDict["father"] as! String
//
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
