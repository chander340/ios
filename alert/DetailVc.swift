
import UIKit

class DetailVCViewController: UIViewController {
    @IBOutlet var txtFldFather: UITextField!
    @IBOutlet var txtFldName: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
     txtFldName.text = objUserModel.nameVal
     txtFldFather.text = objUserModel.namePass
    }
}
