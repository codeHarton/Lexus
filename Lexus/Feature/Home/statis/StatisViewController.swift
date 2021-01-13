//
//  StatisViewController.swift
//  Lexus
//
//  Created by harton on 2021/1/13.
//

import UIKit
import WebKit
import SnapKit
class StatisViewController: UIViewController {

    var webView : WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "数据统计"
        
        
        let config = WKWebViewConfiguration()
        let preference = WKPreferences()
        preference.minimumFontSize = 30
        config.preferences = preference
    
        self.webView = WKWebView(frame: .zero,configuration: config)
        self.view.addSubview(self.webView)
        self.webView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        self.webView.load(URLRequest(url: URL(string: "https://www.lottery.gov.cn/kj/kjlb.html?dlt")!))

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
