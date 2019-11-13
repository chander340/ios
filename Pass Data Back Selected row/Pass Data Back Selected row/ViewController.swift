import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var tblVwList: UITableView!
    
    var arrName = NSMutableArray()
    var selectindex = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self, selector: #selector(postNotification(_:)), name: NSNotification.Name("UpadteValue"), object: nil)
    }
    
    
    @IBAction func actionToAdd(_ sender: Any) {
        //arrName.insert(txtFldName.text!, at: 0)
        arrName.add(txtFldName.text!)
        txtFldName.text = ""
        tblVwList.reloadData()
    }
    @objc func postNotification(_ notification: Notification) {
        
        let objectVal = notification.object as? String ?? ""
        arrName.replaceObject(at: selectindex, with: objectVal)
        txtFldName.text = ""
        tblVwList.reloadData()
    }
    @IBAction func actionToReplace(_ sender: Any) {
        arrName.replaceObject(at: selectindex, with: txtFldName.text!)
        txtFldName.text = ""
        tblVwList.reloadData()
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTVC") as! ListTVC
        cell.lblShowName.text = arrName[indexPath.row] as? String
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.txtFldName.text = arrName[indexPath.row] as? String
             selectindex = indexPath.row
              tblVwList.reloadData()
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        nextVC.selectedData = arrName[indexPath.row] as! String
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}

