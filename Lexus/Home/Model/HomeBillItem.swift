//
//  HomeBillItem.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//

import Foundation
import UIKit






public struct HomeBillItem {
    
    
    let icon : String
    
    let title : String
    
    let segue : String = "SuperLottoViewController"
    
    let lotteryType : LotteryType
    
    lazy var dataSource : [sectionItem] = {
        return lotteryType.getDataSource()
    }()
    
}


