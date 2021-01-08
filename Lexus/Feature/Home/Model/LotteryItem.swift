//
//  LotteryItem.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//
import UIKit
import Foundation
enum DotType {
    case red(enoughCount : Int)
    case blue(enoughCount : Int)
    
    var enoughCount : Int{
        switch self {
        case let .red(enoughCount: enoughCount):
            return enoughCount
        case let .blue(enoughCount: enoughCount):
            return enoughCount
        }
    }
}


typealias sectionItem = [LotteryItem]


///数字模型 具体每一个球
public class LotteryItem : BaseModel {
    var value : Int = 0
    var selected : Bool = false{
        didSet{
            guard selected else { return }
            appearCounts += 1
        }
    }
    
    ///出现的次数
    public var appearCounts = 0
    
    var dotType : DotType = .red(enoughCount: 0)
    
    var text : String{
        return String(value)
    }
}





extension sectionItem{
    ///随机选择足够数量的球
    public func random(){
        self.forEach({$0.selected = false})
        while !enough() {
            addRandomValue()
        }
    }
    ///添加一个随机数
    private func addRandomValue(){
        self.filter{!$0.selected}.randomElement()?.selected = true
    }
    
    private func enough() ->Bool{
        guard !isEmpty else {
            return true
        }
        return self.filter({$0.selected}).count >= dotType.enoughCount
    }
    
    var dotType : DotType{
        guard !isEmpty else {
            return .blue(enoughCount: 0)
        }
        return self[0].dotType
    }
}



extension LotteryItem{
    var textColor : UIColor{
        return .white
    }
    
    
    var bgColor : UIColor{
        switch dotType {
        case .red:
            if selected {
                return .red
            }
            return .white
        default:
            if selected {
                return .blue
            }
            return .white
        }
    }
}
