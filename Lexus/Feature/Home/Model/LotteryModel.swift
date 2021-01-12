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

enum LotteryItemKey : String {
    case time = "time"
    case red = "red"
    case blue = "blue"
}

extension LotteryModel{
    func value() ->[LotteryItemKey : Any]?{
        var value : [LotteryItemKey : Any] = [:]
        value[.time] = Date().description
        if !reds.isEmpty {
            value[.red] = self.reds.map{$0.value}.split(separator: 0)
        }
        if !blues.isEmpty {
            value[.blue] = self.blues.map{$0.value}.split(separator: 0)
        }
        return value
    }
}
