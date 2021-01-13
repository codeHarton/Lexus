//
//  StatisViewController.swift
//  Lexus
//
//  Created by harton on 2021/1/13.
//

import UIKit
import FTPopOverMenu_Swift
class StatisViewController: UITableViewController {
    
    
    public let dataSources = StatisModel.allData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "统计"
    }
    
    @IBAction func selectType(){
        FTPopOverMenu.showFromSenderFrame(senderFrame: CGRect(x: screenWidth - 88, y: statusBarHeight + 44, width: 44, height: 44), with: ["1","2","3"]) { (index) in
            
        }
    }
    
    
    
   
}
