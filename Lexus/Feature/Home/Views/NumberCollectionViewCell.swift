//
//  NumberCollectionViewCell.swift
//  Lexus
//
//  Created by harton on 2021/1/6.
//

import UIKit
import YYText
import SwifterSwift
import SnapKit
class NumberCollectionViewCell: UICollectionViewCell {
    
    let countLabel = UILabel()
    
    public func set(item : LotteryItem){
        self.title.text = item.text
        self.countLabel.text = String(item.appearCounts)
        if item.selected {
            self.title.textColor = .white
            self.title.backgroundColor = .red
        }else{
            self.title.textColor = .white
            self.title.backgroundColor = .blue
        }
    }
    
    let title : YYLabel = YYLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        createUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func createUI(){
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
