//
//  ViewController.swift
//  Lexus
//
//  Created by harton on 2021/1/6.
//

import UIKit
import SwifterSwift


class ViewController: UIViewController {

    @IBOutlet weak var collectionView : UICollectionView!
    

    private var dataSource : [sectionItem] = {
        
        var reds : sectionItem = []
        for i in 1..<36{
            let item = NumberItem()
            item.value = i
            item.dotType = .red
            reds.append(item)
        }
        var blues : sectionItem = []
        for i in 1..<13{
            let item = NumberItem()
            item.value = i
            item.dotType = .blue
            blues.append(item)
        }
        return [reds,blues]
    }()
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _initViews()
        // Do any additional setup after loading the view.
    }
    
    private func _initViews(){
        self.collectionView.register(cellWithClass: NumberCollectionViewCell.self)
    }
    
    
    @IBAction func reload(){
        ///全部未选中
        self.dataSource.forEach({$0.random()})
        
        self.collectionView.reloadData()
    }


}


extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = self.dataSource[indexPath.section][indexPath.item]
        item.selected = !item.selected
        collectionView.reloadData()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.dataSource[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withClass: NumberCollectionViewCell.self, for: indexPath)
        cell.set(item: self.dataSource[indexPath.section][indexPath.item])
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


