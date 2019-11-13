
import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var txtFldMobile: UITextField!
    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var btnCboxemt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//
        if let name =  UserDefaults.standard.object(forKey: "Phone") as? String{
            txtFldMobile.text = name
            btnCboxemt.isSelected = true
        }
        if let name =  UserDefaults.standard.object(forKey: "Pass") as? String{
            txtFldPassword.text = name
            btnCboxemt.isSelected = true
        }
    }
    
    @IBAction func btnCbSelect(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        if txtFldMobile.text == UserDefaults.standard.object(forKey: "Mobile") as? String && txtFldPassword.text == UserDefaults.standard.object(forKey: "Password") as? String {
            //  UserDefaults.standard.synchronize()
            
            let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "LogoutViewController") as! LogoutViewController
            self.navigationController?.pushViewController(nextVc, animated: true)
        }
        if btnCboxemt.isSelected{
            UserDefaults.standard.set(txtFldMobile.text!, forKey: "Phone")
            UserDefaults.standard.set(txtFldPassword.text!, forKey: "Pass")
         }
        if txtFldMobile.text == "" || txtFldPassword.text == ""
        {
            let alert = UIAlertController(title: "Information", message: "Its Mandatort to enter all the fields", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(ok)
            
            self.present(alert, animated: true, completion: nil)
         
        }
        
    }
    
    @IBAction func btnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
