//
//  UIConstant.swift
//  Goodnight
//
//  Created by zhixing on 2020/3/1.
//  Copyright © 2020 yk-mengqingling. All rights reserved.
//  界面尺寸常量

import UIKit

let screenWidth = UIScreen.main.bounds.width

let screenHeight = UIScreen.main.bounds.height

let screenScale = UIScreen.main.scale

let naviBarHeight: CGFloat =  44 + statusBarHeight//screenHeight >= 812.0 ? 88.0 : 64.0

let naviBarDifference: CGFloat = screenHeight >= 812.0 ? 24.0 : 0.0

let tabbarHeight: CGFloat = 49.0

let statusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.height//screenHeight >= 812.0 ? 44.0 : 20.0

let bottomSafeAreaHeight: CGFloat =  screenHeight >= 812.0 ? 34.0 : 0.0


let is_iphonex = screenHeight >= 812.0

// MARK: UI相关 边距
let appLeftPading : CGFloat = 16

let net_toast_delay : TimeInterval = 0.6
