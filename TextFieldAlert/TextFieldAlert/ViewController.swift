import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFldFather: UITextField!
    @IBOutlet weak var txtFldName: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFldName.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
  
    @IBAction func addBtn(_ sender: Any) {
        if txtFldName.text == ""{
            let alert = UIAlertView()
            alert.title = "Enter your Name"
            alert.addButton(withTitle:"Ok")
            alert.show()
            
        }else if txtFldFather.text == "" {
            let alert2 = UIAlertView()
            alert2.title = "Enter your Email "
            alert2.addButton(withTitle:"Ok")
            alert2.show()
        }else if txtFldFather.text != ""{
            let alert2 = UIAlertView()
            let abc = txtFldFather.text
            let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let validate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
            if validate.evaluate(with: abc){
                alert2.title = "valid email "
                alert2.addButton(withTitle:"Ok")
                alert2.show()
            }
            else{
                alert2.title = "Invalid Email"
                alert2.addButton(withTitle: "ok")
                alert2.show()
            }
        }
        
        
       objUserModel.nameVal = txtFldName.text!
       objUserModel.passwordVal = txtFldFather.text!

        
//        let dict  = NSMutableDictionary()
//        dict.setValue(txtFldName.text!, forKey: "name")
//        dict.setValue(txtFldFather.text!, forKey: "father")
//        dict.setValue(5, forKey: "id")
//
     

        
        
        
        let detalVCObj = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
       // detalVCObj.detailDict = dict
        self.navigationController?.pushViewController(detalVCObj, animated: true)
        
            
            }
         
    
        
    }

extension ViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let currentCharacterCount = txtFldName.text else {return true}
      
        print("hi you in")
        let newLength = currentCharacterCount.count + string.count - range.length
        return newLength <= 10
    }
}
    


