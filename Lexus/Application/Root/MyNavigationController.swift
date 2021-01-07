//
//  MyNavigationController.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//

import UIKit

class MyNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if(viewControllers.count > 0){
            viewController.hidesBottomBarWhenPushed = true
            _makeBackAction(vc: viewController)
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    
    private func _makeBackAction(vc : UIViewController){
        let back = UIButton._backButton()
        back.addTarget(self, action: #selector(_backAction), for: .touchUpInside)
        vc.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: back)
        back.contentHorizontalAlignment = .left

    }
    
    @objc private func _backAction(){
        popViewController()
    }
    public class func _init(){
        let appearance = UINavigationBar.appearance(whenContainedInInstancesOf: [MyNavigationController.self])
        
        appearance.barTintColor = .white
        
        appearance.titleTextAttributes = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),NSAttributedString.Key.foregroundColor : UIColor.black]
        appearance.tintColor = UIColor.black
        let image = UIImage(color: .white, size: CGSize(width: screenWidth, height: naviBarHeight))// is_iphonex ? UIImage(named: "appBar_normal") : UIImage(named: "appBar_x")
        appearance.setBackgroundImage(image, for: .default)        
     

    }
    
    override var childForStatusBarStyle: UIViewController?{
        return self.topViewController
    }
}
