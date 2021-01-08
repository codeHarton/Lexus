//
//  LotteryModel.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//

import Foundation

class LotteryModel {
    
    public var type : LotteryType = .superLotto
    
    public var reds : ArraySlice<LotteryItem>
    
    public var blues : ArraySlice<LotteryItem>
    

    
    init(type : LotteryType,reds : ArraySlice<LotteryItem>,blues : ArraySlice<LotteryItem>?) {
        self.type = type
        self.reds = reds
        if let _b = blues {
            self.blues = _b
        }else{
            self.blues = []
        }
    }
}
