//
//  LotteryType.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//

import Foundation
///票种
public enum LotteryType : Int {
    ///大乐透
    case superLotto = 0
    ///双色球
    case unionLotto = 1
    ///快乐8
    case happyLotto = 2
    
    case other = 3
    
    var rate : Int32 {
        switch self {
        case .unionLotto:
            return 17721088
        case .superLotto:
            return 21425712
        default:
            return 0
        }
    }
    
    public init(rawValue : Int) {
        switch rawValue {
        case 0:
            self = .superLotto
        case 1:
            self = .unionLotto
        case 2:
            self = .happyLotto
        default:
            self = .other
        }
    }
    
    ///红球最大个数
    func redEnoughCount() ->Int{
        switch self {
        case .superLotto:
            return 5
        case .unionLotto:
            return 6
        case .happyLotto:
            return 10
        default:
            return 0
        }
    }
    ///篮球最大个数
    func blueEnoughCount() ->Int{
        switch self {
        case .superLotto:
            return 2
        case .unionLotto:
            return 1
        case .happyLotto:
            return 0
        default:
            return 0
        }
    }
    
    ///红球范围
    var redRange : Range<Int>?{
        switch self {
        case .superLotto:
            return 1..<36
        case .unionLotto:
            return 1..<34
        case .happyLotto:
            return 1..<81
        default:
            return nil
        }
    }
    ///篮球范围
    var blueRange : Range<Int>?{
        switch self {
        case .superLotto:
            return 1..<13
        case .unionLotto:
            return 1..<17
        default:
            return nil
        }
    }
    
    ///红球
    func getReds() ->sectionItem{
        guard let _reR = redRange else {
            return []
        }
        var reds : sectionItem = []
        for i in _reR{
            let item = LotteryItem()
            item.value = i
            item.dotType = .red(enoughCount: redEnoughCount())
            reds.append(item)
        }
        return reds
    }
    
    //篮球
    func getBlus() ->sectionItem{
        guard let _blueRange = blueRange else {
            return []
        }
        var blues : sectionItem = []
        for i in _blueRange{
            let item = LotteryItem()
            item.value = i
            item.dotType = .blue(enoughCount: blueEnoughCount())
            blues.append(item)
        }
        return blues
    }
}
