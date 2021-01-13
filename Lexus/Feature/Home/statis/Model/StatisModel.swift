//
//  StatisModel.swift
//  Lexus
//
//  Created by harton on 2021/1/13.
//

import UIKit

struct StatisModel {

    ///期号
    var issue : Int
    
    ///红球
    var red1 : Int
    var red2 : Int
    var red3 : Int
    var red4 : Int
    var red5 : Int
    
//    篮球
    var blue1 : Int
    var blue2 : Int
    
    //摇奖套装
    var type : Int
    
    
    
    public static let allData : [StatisModel] = {
        var values : [StatisModel] = [
        //StatisModel(issue: <#T##Int#>, red1: <#T##Int#>, red2: <#T##Int#>, red3: <#T##Int#>, red4: <#T##Int#>, red5: <#T##Int#>, blue1: <#T##Int#>, blue2: <#T##Int#>, type: <#T##Int#>)
        
        
        ]
    
        return values
    }()
}



extension StatisModel{
    public static func dataFor2019() -> [StatisModel]{
        return [
        
            StatisModel(issue: 19102, red1: 5, red2: 10, red3: 15, red4: 19, red5: 31, blue1: 3, blue2: 6, type: 3)
            //StatisModel(issue: <#T##Int#>, red1: <#T##Int#>, red2: <#T##Int#>, red3: <#T##Int#>, red4: <#T##Int#>, red5: <#T##Int#>, blue1: <#T##Int#>, blue2: <#T##Int#>, type: <#T##Int#>)
            //StatisModel(issue: <#T##Int#>, red1: <#T##Int#>, red2: <#T##Int#>, red3: <#T##Int#>, red4: <#T##Int#>, red5: <#T##Int#>, blue1: <#T##Int#>, blue2: <#T##Int#>, type: <#T##Int#>)
            //StatisModel(issue: <#T##Int#>, red1: <#T##Int#>, red2: <#T##Int#>, red3: <#T##Int#>, red4: <#T##Int#>, red5: <#T##Int#>, blue1: <#T##Int#>, blue2: <#T##Int#>, type: <#T##Int#>)



        ]
    }
}
