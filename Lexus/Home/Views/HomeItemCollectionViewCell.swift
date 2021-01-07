//
//  HomeItemCollectionViewCell.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//

import UIKit

class HomeItemCollectionViewCell: UICollectionViewCell {
    
    let icon = UIImageView()
    let title : UILabel = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        createUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func createUI(){
        self.contentView.addSubview(icon)
     
        icon.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-15)
            make.size.equalTo(CGSize(width: 48, height: 48))
        }
        icon.cornerRadius = 24
        
        
        self.contentView.addSubview(title)
        title.textAlignment = .center
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .black
        title.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(icon.snp.bottom).offset(10)
        }
    }
}
