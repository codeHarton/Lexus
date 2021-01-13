//
//  StatisNormalTableViewCell.swift
//  Lexus
//
//  Created by harton on 2021/1/13.
//

import UIKit

class StatisNormalTableViewCell: BaseTableViewCell,CellProtocol {

    typealias T = StatisModel
    
    public let flagTitle = UILabel()

    
    var collectionView : UICollectionView!
    var model: StatisModel?
    
    func update(model: StatisModel?) {
        self.model = model
        self.flagTitle.text = model?.desc
        self.collectionView.reloadData()
    }
    
    
    
    override func createUI() {
        selectionStyle = .none
        
        self.contentView.addSubview(flagTitle)
        flagTitle.textColor = .black
        flagTitle.font = .systemFont(ofSize: 13)
        flagTitle.snp.makeConstraints { (make) in
            make.left.top.equalTo(10)
        }
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 44, height: 44)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: .zero,collectionViewLayout: layout)
        contentView.addSubview(collectionView)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(44)
        }
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(cellWithClass: MostViewedCollectionViewCell_cell.self)
    }
}

extension StatisNormalTableViewCell : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let item = model?.lotterModel else {
            return 0
        }
        if 0 == section {
            return item.reds.count
        }
        return item.blues.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withClass: MostViewedCollectionViewCell_cell.self, for: indexPath)
        if 0 == indexPath.section {
            cell.set(item: self.model?.lotterModel?.reds[indexPath.item],selected: false)
        }else{
            cell.set(item: self.model?.lotterModel?.blues[indexPath.item],selected: true)
        }
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: section == 0 ? 10 : 20, bottom: 0, right: 0)
    }
}
