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
    
    public init(rawValue : Int) {
        switch rawValue {
        case 0:
            self = .superLotto
        case 1:
            self = .unionLotto
        default:
            self = .happyLotto
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
        }
    }
    
    ///红球范围
    var redRange : Range<Int>{
        switch self {
        case .superLotto:
            return 1..<36
        case .unionLotto:
            return 1..<34
        default:
            return 1..<81
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
    
    ///获取 数据源
    func getDataSource() ->[sectionItem]{
        var reds : sectionItem = []
        for i in redRange{
            let item = LotteryItem()
            item.value = i
            item.dotType = .red(enoughCount: redEnoughCount())
            reds.append(item)
        }
        if let _blueRange = blueRange {
            var blues : sectionItem = []
            for i in _blueRange{
                let item = LotteryItem()
                item.value = i
                item.dotType = .blue(enoughCount: blueEnoughCount())
                blues.append(item)
            }
            return [reds,blues]
        }
        return [reds]
    }
}
