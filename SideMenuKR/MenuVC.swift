//
//  MenuVC.swift
//  SideMenuKR
//
//  Created by Training on 07/11/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func actHome(_ sender: Any) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    @IBAction func actCompose(_ sender: Any) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "ComposeMailVC") as! ComposeMailVC
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    @IBAction func actInbox(_ sender: Any) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "InboxVC") as! InboxVC
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    @IBAction func actSentmails(_ sender: Any) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "SentMailsVC") as! SentMailsVC
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    @IBAction func actDrafts(_ sender: Any) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "DraftsVc") as! DraftsVc
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    @IBAction func actSettings(_ sender: Any) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "SettingsVC") as! SettingsVC
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
 
}
