//
//  LotterDetailViewController.swift
//  Lexus
//
//  Created by harton on 2021/1/13.
//

import UIKit
import WebKit
import Toast
class LotterDetailViewController: BaseViewController {

    var webView : WKWebView!
    @IBOutlet weak var textLabel : UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "统计"
        self.count = Int(self.textLabel.text!)!
        
        let config = WKWebViewConfiguration()
        let preference = WKPreferences()
        preference.minimumFontSize = 30
        config.preferences = preference
        
        self.webView = WKWebView(frame: .zero,configuration: config)
        self.view.addSubview(self.webView)
        self.webView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(100 + 44)
            make.left.right.bottom.equalToSuperview()
        }
        _reload()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func plus() {
        if count == 20134 {
            count = 21001
        } else if count == 19150{
            count = 20001
        }
        else{
            count += 1
        }
        _reload()
    }
    
    
    @IBAction func minus() {
        if count <= 19102 {
            count = 19102
            self.view.makeToast("统计从19102期开始", duration: 1, position: CSToastPositionCenter)
        } else if count == 21001 {
            count = 20134
        } else if count == 20001{
            count = 19150
        } else{
            count -= 1
        }
        _reload()
    }
    
    private func _reload(){
        self.textLabel.text = String(count)
        let url = "https://pdf.sporttery.cn/33800/\(count)/\(count).pdf"
        self.webView.load(URLRequest(url: URL(string: url)!))
    }
    
  
    
}
