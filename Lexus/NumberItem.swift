//
//  NumberItem.swift
//  Lexus
//
//  Created by harton on 2021/1/6.
//

import UIKit

enum DotType {
    case red
    case blue
    
    var enoughCount : Int{
        switch self {
        case .red:
            return 5
        default:
            return 2
        }
    }
    
    var randomValue : Int{
        switch self {
        case .red:
            return Int.random(in: 1..<36)
        default:
            return Int.random(in: 1..<13)
        }
    }
}

public class NumberItem : NSObject {
    var value : Int = 0
    var selected : Bool = false
    
    var dotType : DotType = .red
    
    var text : String{
        return String(value)
    }
    
    
}


typealias sectionItem = [NumberItem]



extension sectionItem{
    func random(){
        self.forEach({$0.selected = false})
        while !enough() {
            addRandomValue()
        }
    }
    ///添加一个随机数
    private func addRandomValue(){
        self.filter{!$0.selected}.randomElement()?.selected = true
    }
    
    func enough() ->Bool{
        return self.filter({$0.selected}).count >= dotType.enoughCount
    }
    
    var dotType : DotType{
        return first?.dotType ?? .red
    }
}



extension NumberItem{
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
