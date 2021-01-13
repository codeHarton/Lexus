//
//  StatisViewController.swift
//  Lexus
//
//  Created by harton on 2021/1/13.
//

import UIKit
import FTPopOverMenu_Swift
class StatisViewController: UITableViewController {
    
    
    
    
    private var currentSource : [StatisModel] = [StatisModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(cellWithClass: StatisNormalTableViewCell.self)
        self._select(type: 0)
        self.tableView.rowHeight = 100
        self.tableView.tableFooterView = UIView()
        self.tableView.separatorStyle = .none
    }
    
    ///选择类型
    @IBAction func selectType(){
        FTPopOverMenu.showFromSenderFrame(senderFrame: CGRect(x: screenWidth - 110, y: statusBarHeight, width: 44, height: 44), with: ["0","1","2","3"]) {[weak self] (index) in
            self?._select(type: index)
        }
    }
    
    private func _select(type : Int){
        if 0 == type {
            self.currentSource = StatisModel.allData
        }else{
            self.currentSource = StatisModel.allData.filter({$0.type == type})
        }
        self.tableView.reloadData{}
    }
    
   
}
extension StatisViewController{
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.currentSource.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withClass: StatisNormalTableViewCell.self)
        cell.update(model: self.currentSource[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "LotterDetailViewController") as! LotterDetailViewController
        vc.count = self.currentSource[indexPath.row].issue
        navigationController?.pushViewController(vc)
    }
}
