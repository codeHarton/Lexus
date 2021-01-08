//
//  MostViewedCollectionViewCell.swift
//  Lexus
//
//  Created by harton on 2021/1/8.
//

import UIKit

class MostViewedCollectionViewCell: BaseCollectionViewCell ,CellProtocol{
    typealias T = LotteryModel
    
    public let flagTitle = UILabel()

    
    var collectionView : UICollectionView!
    var model: LotteryModel?
    
    func update(model: LotteryModel?) {
        self.model = model
        self.collectionView.reloadData()
    }
    
    
    
    override func createUI() {
        
        
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

extension MostViewedCollectionViewCell : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let item = model else {
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
            cell.set(item: self.model?.reds[indexPath.item],selected: false)
        }else{
            cell.set(item: self.model?.blues[indexPath.item],selected: true)
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


class MostViewedCollectionViewCell_cell: BaseCollectionViewCell {
    let countLabel = UILabel()

    public func set(item : LotteryItem?,selected : Bool){
        guard let item = item else {
            return
        }
        self.countLabel.text = String(item.appearCounts)
        self.title.text = item.text
        if selected {
            self.title.textColor = .white
            self.title.backgroundColor = .red
        }else{
            self.title.textColor = .white
            self.title.backgroundColor = .blue
        }
    }
    
    
    public let title = UILabel()
    override func createUI() {

        title.textColor = .black
        
        self.contentView.addSubview(title)
        title.textAlignment = .center
        title.font = .boldSystemFont(ofSize: 20)
        title.textColor = .white
        title.backgroundColor = .blue
        title.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.size.equalTo(CGSize(width: 44, height: 44))
        }
        title.cornerRadius = 22
        
        
        self.contentView.addSubview(countLabel)
        countLabel.snp.makeConstraints { (make) in
            make.right.top.equalToSuperview()
            
        }
        countLabel.font = .systemFont(ofSize: 10)
        countLabel.backgroundColor = .cyan
        countLabel.textColor = .red
        
        countLabel.textAlignment = .center
    }
    
  
}
