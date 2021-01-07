//
//  UIKit+Extension.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//

import Foundation
import UIKit


extension  UIButton{
    public static func _backButton(_ frame : CGRect = CGRect(x: 0, y: 0, width: 44, height: 44)) -> UIButton{
        let back = UIButton(type: .custom)
        let image = UIImage(named: "app_back")?.withRenderingMode(.alwaysTemplate)
        back.setImage(image, for: .normal)
        back.frame = frame
        back.tintColor = .black
        return back
    }
}
