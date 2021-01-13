//
//  StatisDetailViewController.swift
//  Lexus
//
//  Created by harton on 2021/1/13.
//

import UIKit

class StatisDetailViewController: UIViewController {

    @IBOutlet weak var collectionView : UICollectionView!
    
    public var type : Int = 0

    let billItem : HomeBillItem = HomeBillItem(icon: "", title: "", segue: "", lotteryType: .superLotto)
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.register(cellWithClass: NumberCollectionViewCell.self)
        self.collectionView.register(cellWithClass: MostViewedCollectionViewCell.self)

        
        _initData()
        // Do any additional setup after loading the view.
    }
    
    private func _initData(){
        var list = StatisModel.allData
        if self.type != 0 {
            list = list.filter({$0.type == self.type})
        }
        list.forEach { (model) in
            model.reds.forEach { (index) in
                self.billItem.reds.first(where: {$0.value == index})?.selected = true
            }
            model.blues.forEach { (index) in
                self.billItem.blues.first(where: {$0.value == index})?.selected = true
            }
        }
        self.billItem.calculateMaxMinValue()
        self.collectionView.reloadData()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension StatisDetailViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
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
                cell.update(model: self.billItem.maxMinLotteryModel)
                cell.flagTitle.text = "最佳组合"
            }else if 1 == indexPath.item{
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
