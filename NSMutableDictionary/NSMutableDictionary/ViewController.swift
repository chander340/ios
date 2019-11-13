import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var classField: UITextField!
    @IBOutlet weak var rollNumber: UITextField!
    @IBOutlet weak var departmentField: UITextField!
    
        let nsMute = NSMutableArray()
    
    var locArr = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nsMute.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        
        //cell.nameLbl.text = nsMute[indexPath.row] as? String
        
        let cellData = nsMute[indexPath.row] as! NSMutableDictionary
        cell.nameLbl.text = cellData["name"] as? String
        cell.classLbl!.text = cellData["class"] as? String
        cell.rollnumberLbl!.text = cellData["rollnumber"] as? String
        cell.departmentLbl!.text = cellData["department"] as? String
        
        cell.editBtn.tag = indexPath.row
        
        cell.editBtn.addTarget(self, action: #selector(editData), for: .touchUpInside)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        let cellData = nsMute[indexPath.row] as! NSMutableDictionary
        detailVc.printName = cellData["name"] as!String
        detailVc.printDp = cellData["department"] as! String
        detailVc.printRn = cellData["rollnumber"] as! String
        detailVc.printClass = cellData["class"] as! String
        
        navigationController?.pushViewController(detailVc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            self.nsMute.removeObject(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            
           // locArr = locArr + 1
            self.tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        let transfrom = CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0)
        cell.layer.transform = transfrom
        
        UIView.animate(withDuration: 1.0){
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
        }
    }
    
    @objc func editData(_ sender: UIButton){
        
        let indexPath = IndexPath(row: sender.tag,section:0)
        
        
         let cellData = nsMute[indexPath.row] as! NSMutableDictionary
        locArr = sender.tag
        nameField.text =  cellData["name"] as? String
        classField.text = cellData["class"] as? String
        rollNumber.text = cellData["rollnumber"] as? String
        departmentField.text = cellData["department"] as? String
       // locArr = indexPath.row
        
    }
    
    @IBAction func addNewCell(_ sender: Any) {
        
        let nameArr = NSMutableDictionary()
        
        
        nameArr.setValue(nameField.text!, forKey: "name")
        nameArr.setValue(classField.text!, forKey: "class")
        nameArr.setValue(rollNumber.text!, forKey: "rollnumber")
        nameArr.setValue(departmentField.text!, forKey: "department")
        nsMute.add(nameArr)
        nameField.text = ""
        classField.text = ""
        rollNumber.text = ""
        departmentField.text = ""
        tableView.reloadData()
        
    }

    @IBAction func updateCell(_ sender: Any) {
        let indexPath = IndexPath(row: locArr,section:0)
        
    let cellData = nsMute[indexPath.row] as! NSMutableDictionary
        cellData["name"] = nameField.text
        cellData["class"] = classField.text
        cellData["rollnumber"] = rollNumber.text
        cellData["department"] = departmentField.text
        
        nameField.text = ""
        classField.text = ""
        rollNumber.text = ""
        departmentField.text = ""
        
        tableView.reloadData()
    }
    
}
