//
//  ViewController.swift
//  CollectionVHeadPrac
//
//  Created by Training on 11/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var clcVw: UICollectionView!
    var arrIndia = ["i1","i2","i3","i4","i5","i6","i7","i8","i9","i10","i11","i12","i13","i14","i15","i16","i17","i18"]
    var arrWorld = ["w1","w2","w3","w4","w5","w6","w7",]
    
    var arrsee = ["b1","b2","b3","b4","b5","b6","b7","b8","b9","b10"]
    
 
    
    
    var arrCombind = [Array<String>]()
    
    var arrSections = ["INDIA","WORLD","BEACH"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        clcVw.delegate = self
//        clcVw.dataSource = self
        
        arrCombind = [arrIndia,arrWorld,arrsee]
        
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arrSections.count
    }
    // header section for collection view
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        var reusable : UICollectionReusableView? = nil
        
        if(kind == UICollectionView.elementKindSectionHeader) {
            let view = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "CRcell", for: indexPath) as! CRcell
            view.lblText.text = arrSections[indexPath.section]
            reusable = view
        }
        return reusable!
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCombind[section].count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClcCell", for: indexPath) as! ClcCell
        if indexPath.section == 0 {
            cell.imgVw.image = UIImage(named: arrIndia[indexPath.row])
        } else if indexPath.section == 1 {
            cell.imgVw.image = UIImage(named: arrWorld[indexPath.row])
        } else {
            cell.imgVw.image = UIImage(named: arrsee[indexPath.row])
        }
        return cell
    }
}




