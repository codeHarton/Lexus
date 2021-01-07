//
//  ViewController.swift
//  Lexus
//
//  Created by harton on 2021/1/6.
//

import UIKit
import SwifterSwift


class SuperLottoViewController: UIViewController {

    @IBOutlet weak var collectionView : UICollectionView!
    
    public var billItem : HomeBillItem!
    

   
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _initViews()
        // Do any additional setup after loading the view.
    }
    
    private func _initViews(){
        
        self.title = billItem.title
        self.collectionView.register(cellWithClass: NumberCollectionViewCell.self)
    }
    
    
    @IBAction func reload(){
        ///全部未选中
        self.billItem.dataSource.forEach({$0.random()})
        
        self.collectionView.reloadData()
    }

}


extension SuperLottoViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = self.billItem.dataSource[indexPath.section][indexPath.item]
        item.selected = !item.selected
        collectionView.reloadData()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self.billItem.dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.billItem.dataSource[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withClass: NumberCollectionViewCell.self, for: indexPath)
        cell.set(item: self.billItem.dataSource[indexPath.section][indexPath.item])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}


