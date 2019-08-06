import UIKit
import Alamofire

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var dataTblView: UITableView!
    var dict = [NSDictionary]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlStr = "https://jsonplaceholder.typicode.com/users"
        Alamofire.request(urlStr).responseJSON{(data) in
            if let getDict = data.result.value{
                self.dict = getDict as! [NSDictionary]
                self.dataTblView.reloadData()
            }else
            {
                print("Error")
                
            }
        }
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dict.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataTableViewCell", for : indexPath) as! DataTableViewCell
        
        cell.idLbl.text = ("\(dict[indexPath.row]["id"] ?? "error")")
        cell.nameLbl.text = ("\(dict[indexPath.row]["name"] ?? "error")")
        cell.usernameLbl.text = ("\(dict[indexPath.row]["username"] ?? "error")")
        cell.emailLbl.text = ("\(dict[indexPath.row]["email"] ?? "error")")
        
        let addressDict = dict[indexPath.row]["address"] as? NSDictionary
        cell.streetLbl.text = ("\(addressDict!["street"] ?? "error")")
        cell.suiteLbl.text = ("\(addressDict!["suite"] ?? "error")")
        cell.cityLbl.text = ("\(addressDict!["city"] ?? "error")")
        cell.zipcodeLbl.text = ("\(addressDict!["zipcode"] ?? "error")")
        
        let dictgeo = addressDict!["geo"] as? NSDictionary
//        print(dict[indexPath.row]["geo"])
        cell.latLbl.text = ("\(dictgeo!["lat"] ?? "error")")
        cell.lngLbl.text = ("\(dictgeo!["lng"] ?? "error")")
        
        
        let dictPhones = dict[indexPath .row] as? NSDictionary
        cell.phoneLbl.text = dictPhones!["phone"] as? String
        cell.websiteLbl.text = dictPhones!["website"] as? String
        
        let companyDict = dict[indexPath.row]["company"] as? NSDictionary
        cell.companyNameLbl.text = ("\(companyDict!["name"]))
        return cell
        
       
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(dict[indexPath.row]["id"] as Any )
        
      
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 800
    }
    }

