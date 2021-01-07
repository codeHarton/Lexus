//
//  HomeAdapter.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//

import UIKit

class HomeAdapter: NSObject {
    
    
    
    public let dataSource : [HomeBillItem] = {
        return [HomeBillItem(icon: "superLotto",title: "大乐透",lotteryType: .superLotto),HomeBillItem(icon: "unionLotto",title: "双色球",lotteryType: .unionLotto),HomeBillItem(icon: "happy8",title: "快乐8",lotteryType: .happyLotto)]
    }()
}
