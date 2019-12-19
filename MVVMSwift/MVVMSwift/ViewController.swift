import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 
    @IBOutlet var tableView: UITableView!
    var modelViewObj = ModelVC()
    

    override func viewDidLoad() {
        super.viewDidLoad()
      modelViewObj.hitapi()
        modelViewObj.StudentList = {
            [weak self] () in
            self?.tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return modelViewObj.modelobj.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "DataTableViewCell", for: indexPath) as! DataTableViewCell
        cell.nameLbl.text = modelViewObj.modelobj[indexPath.row].nameStr
        return cell
    }

}

