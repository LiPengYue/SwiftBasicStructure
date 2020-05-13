//
//  BaseSize.swift
//  SwiftBasicStructure
//
//  Created by 李鹏跃 on 2020/5/13.
//  Copyright © 2020 13lipengyue. All rights reserved.
//

import UIKit

open class BaseSize: NSObject {
    /// 屏幕最大高度
    static let screenH: CGFloat = UIScreen.main.bounds.size.height
    /// 屏幕最大宽度
    static let screenW: CGFloat = UIScreen.main.bounds.size.width
    
    /// 电池栏高度
    static let statusBarH: CGFloat = UIApplication.shared.statusBarFrame.size.height
    /// 导航条高度
    static let navBarH: CGFloat =  UINavigationController.init().navigationBar.bounds.size.height
    /// 导航条总高度  iphoneX 以下为64，以上为88
    static let navTotalH: CGFloat = navBarH + statusBarH

    /// 底部的导航栏高度
    static let tabbarH: CGFloat = UIApplication.shared.statusBarFrame.size.height > 20 ? 83 : 49
    /// 底部的homelBar高度
    static let homeBarH: CGFloat = statusBarH > 20 ? 34 : 0
    
    /// 祛除导航栏h 后的最大高度 screenH - NavTotalH
    static let screen_navH: CGFloat = screenH - navTotalH
    /// 祛除导航栏与tabbar的高度 screenH - navTotalH - tabbarH
    static let screen_nav_tabBarH: CGFloat = screen_navH - tabbarH
    
}
