//
//  HomeAdapter.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//

import UIKit

class HomeAdapter: NSObject {
    
    
    
    public let dataSource : [HomeBillItem] = {
        return [HomeBillItem(icon: "superLotto",title: "大乐透", segue: "LotteryViewController",lotteryType: .superLotto),HomeBillItem(icon: "unionLotto",title: "双色球", segue: "LotteryViewController",lotteryType: .unionLotto),HomeBillItem(icon: "happy8",title: "快乐8", segue: "LotteryViewController",lotteryType: .happyLotto),HomeBillItem(icon: "home_research",title: "研究中心", segue: "home_research",lotteryType: .other),HomeBillItem(icon: "statis",title: "统计", segue: "statis",lotteryType: .other)]
    }()
}
