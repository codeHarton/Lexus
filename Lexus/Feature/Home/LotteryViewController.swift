//
//  ViewController.swift
//  Lexus
//
//  Created by harton on 2021/1/6.
//

import UIKit
import SwifterSwift


class LotteryViewController: UIViewController {

    @IBOutlet weak var collectionView : UICollectionView!
    
    public var billItem : HomeBillItem!
    
    let defaultRandomValue = 10000
    
    var randomCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _initViews()
        // Do any additional setup after loading the view.
    }
    
    private func _initViews(){
        
        self.title = billItem.title
        self.collectionView.register(cellWithClass: NumberCollectionViewCell.self)
        self.collectionView.register(cellWithClass: MostViewedCollectionViewCell.self)
    }
    
    
    ///随机
    @IBAction func reload(){
        ///全部未选中
        self.billItem.dataSource.forEach({$0.random()})
        self.randomCount += 1
        _reload()
    }
    
    
    ///快速机选10次
    @IBAction func fastRandom(){
        DispatchQueue.main.async {
            for _ in 0..<self.defaultRandomValue{
                ///全部未选中
                self.billItem.dataSource.forEach({$0.random()})
            }
            DispatchQueue.main.async {
                self.randomCount += self.defaultRandomValue
                self._reload()
            }
        }
    }
    
    private func _reload(){
        self.billItem.calculateMaxMinValue()
        self.collectionView.reloadData()
        self.title = "随机\(randomCount)次"
    }
    
    ///统计
    @IBAction func statistics(){
        
    }

}


extension LotteryViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = self.billItem.dataSource[indexPath.section][indexPath.item]
        item.selected = !item.selected
        collectionView.reloadData()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self.billItem.numOfSection()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.billItem.numOfItemIn(section: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == self.billItem.dataSource.count {
            let cell = collectionView.dequeueReusableCell(withClass: MostViewedCollectionViewCell.self, for: indexPath)
            if 0 == indexPath.item {
                cell.update(model: self.billItem.maxLotteryModel)
                cell.flagTitle.text = "出现频率最高的球"
            }else{
                cell.update(model: self.billItem.minLotteryModel)
                cell.flagTitle.text = "出现频率最低的球"
            }
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withClass: NumberCollectionViewCell.self, for: indexPath)
        cell.set(item: self.billItem.dataSource[indexPath.section][indexPath.item])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == self.billItem.dataSource.count {
            ///二区
            return CGSize(width: screenWidth, height: 74)
        }
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


