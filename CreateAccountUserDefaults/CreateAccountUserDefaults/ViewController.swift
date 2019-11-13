

import UIKit
import CoreData
class ViewController: UIViewController {
    @IBOutlet weak var txtFldUsername: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    @IBOutlet weak var txtFldMobile: UITextField!
    @IBOutlet weak var txtFldPass: UITextField!
    @IBOutlet weak var txtFldConfpass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        txtFldEmail.text?.removeAll()
        txtFldUsername.text?.removeAll()
        txtFldPass.text?.removeAll()
        txtFldConfpass.text?.removeAll()
        txtFldMobile.text?.removeAll()

    }
    @IBAction func btnCreateacc(_ sender: Any) {

        UserDefaults.standard.set(txtFldMobile.text, forKey: "Mobile")
        UserDefaults.standard.set(txtFldPass.text, forKey: "Password")
        
        
        if txtFldUsername.text == "" || txtFldEmail.text == "" || txtFldMobile.text == "" || txtFldPass.text == "" || txtFldConfpass.text == "" {
            let alert = UIAlertController(title: "Information", message: "Its Mandatort to enter all the fields", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            
            self.present(alert, animated: true, completion: nil)
            
            
//            if txtFldEmail.text ==
//
//             let alert = UIAlertController(title: "Information", message: "Please enter valid Email", preferredStyle: .alert)
//
//
//                }
//                func isValidEmail(emailID:String) -> Bool {
//                    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
//                    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//                    return emailTest.evaluate(with: emailID)
            
            
            
//                }
//                }
    
    
            
            
            
            
        } else if (txtFldPass.text != txtFldConfpass.text) {
            let alert = UIAlertController(title: "Information", message: "Password does not match", preferredStyle: .alert
            )
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            
            self.present(alert, animated: true, completion: nil)
   
    }
     
        
        let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(nextVc, animated: true)
        
    }
    @IBAction func haveAccount(_ sender: Any) {
        let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(nextVc, animated: true)
        
    }
    

}
    
//lblText.isHidden = true
//guard let email = txtFldEmail.text,
//    let password = txtFldPass.text else {
//        return
//}
//let isValidateEmail = self.validation.validateEmailId(emailID: email)
//if (isValidateEmail == false){
//    lblText.isHidden = false
//    lblText.text = "Please Enter Your Email"
//    //  print("Incorrect Email")
//    return
//}
//let isValidatePass = self.validation.validatePassword(password: password)
//if (isValidatePass == false) {
//    lblText.isHidden = false
//    lblText.text = "Please Enter Your Password"
//    //  print("Incorrect Pass")
//    return
//}
//if (isValidateEmail == true || isValidatePass == true) {
//    lblText.isHidden = false
//    lblText.text = "Please Enter Valid Email"
//    //        print("All fields are correct")
//}
//}
//func isValidEmail(emailID:String) -> Bool {
//    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
//    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//    return emailTest.evaluate(with: emailID)
//}
//}
//
