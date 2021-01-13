//
//  HomeBillItem.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//

import Foundation
import UIKit






public class HomeBillItem : BaseModel{
    
    var maxLotteryModel : LotteryModel?
    
    var minLotteryModel : LotteryModel?
    
    ///根据最大最小值 去除 随机值
    var maxMinLotteryModel : LotteryModel?
    
    let icon : String
    
    let title : String
    
    let segue : String
    
    let lotteryType : LotteryType
    
    let reds : sectionItem
    
    let blues : sectionItem
    
    init(icon : String,title : String,segue: String,lotteryType: LotteryType){
        self.icon = icon
        self.title = title
        self.lotteryType = lotteryType
        self.segue = segue
        
        self.reds = lotteryType.getReds()
        self.blues = lotteryType.getBlus()
        self.dataSource = [self.reds,self.blues]
    }
    
    let dataSource : [sectionItem]
    
    
    ////统计最高数 和最低数
    public func calculateMaxMinValue(){
        
        ///统计最高数 和最低数
        
        if !self.reds.isEmpty {
            self.maxLotteryModel = LotteryModel(type: lotteryType, reds: self.reds.sorted(by: \.appearCounts, with: >)[0..<reds.dotType.enoughCount], blues: self.blues.sorted(by: \.appearCounts, with: >)[0..<blues.dotType.enoughCount])
            
            self.minLotteryModel = LotteryModel(type: lotteryType, reds: self.reds.sorted(by: \.appearCounts, with: <)[0..<reds.dotType.enoughCount], blues: self.blues.sorted(by: \.appearCounts, with: <)[0..<blues.dotType.enoughCount])
            
            
            let _reds = self.reds.sorted(by: \.appearCounts, with: >)[0..<reds.dotType.enoughCount] + self.reds.sorted(by: \.appearCounts, with: <)[0..<reds.dotType.enoughCount]
            let _blues = self.blues.sorted(by: \.appearCounts, with: >)[0..<blues.dotType.enoughCount] + self.blues.sorted(by: \.appearCounts, with: <)[0..<blues.dotType.enoughCount]
            
            var __reds = sectionItem()
            __reds.append(_reds.randomElement()!)
            while __reds.count < __reds.dotType.enoughCount {
                if let item = _reds.randomElement(){
                    if !__reds.map({$0.value}).contains(item.value) {
                        __reds.append(item)
                    }
                }
                
            }
            var __blues = sectionItem()
            __blues.append(_blues.randomElement()!)
            while __blues.count < __blues.dotType.enoughCount {
                if let item = _blues.randomElement(){
                    if !__blues.contains(item) {
                        __blues.append(item)
                    }
                }
            }
            self.maxMinLotteryModel = LotteryModel(type: lotteryType, reds: ArraySlice(__reds), blues: ArraySlice(__blues))
        }
        
        
    }
    
    
    
}


extension HomeBillItem{
    public func numOfSection() ->Int{
        var num = self.dataSource.count
        if let _ = self.maxLotteryModel {
            num += 1
        }
        return num
    }
    
    public func numOfItemIn(section : Int) ->Int{
        if section == self.dataSource.count {
            return 3
        }
        return self.dataSource[section].count
    }
}
