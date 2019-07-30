import UIKit
import Alamofire

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
   
    
 
    var dict = [NSDictionary]()
    
    @IBOutlet weak var dataTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlStr = "https://my-json-server.typicode.com/typicode/demo/posts"
        Alamofire.request(urlStr).responseJSON { (data) in
            //print(data)
            
            if let getDict = data.result.value{
                self.dict = getDict as! [NSDictionary]
                self.dataTableView.reloadData()
                
            }else{
                print("error")
            }
       
            
        }
        
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dict.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dataTableView.dequeueReusableCell(withIdentifier: "TableVC", for: indexPath) as! TableVC
        
        cell.showLbl.text = (" \(dict[indexPath.row][""] ?? "error")")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(dict[indexPath.row]["id"])
    }


}

