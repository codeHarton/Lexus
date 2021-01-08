//
//  BaseCollectionViewCell.swift
//  Lexus
//
//  Created by harton on 2021/1/8.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    ///子类实现
    func createUI(){
        
    }

}
