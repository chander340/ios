
import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var txtFldShowName: UITextField!
    
     var selectedData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtFldShowName.text = selectedData
    }
    @IBAction func actionToPassBack(_ sender: Any) {
        
        NotificationCenter.default.post(name: NSNotification.Name("UpdateValue"), object: txtFldShowName.text!)
        self.navigationController?.popViewController(animated: true)
    }
    

}
