//
//  LotteryModel.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//

import Foundation

class LotteryModel {
    
    public var type : LotteryType = .superLotto
    
    public var reds : sectionItem = sectionItem()
    
    public var blues : sectionItem?
    
    init(type : LotteryType,reds : [Int],blues : [Int]) {
        self.type = type
    }
}
