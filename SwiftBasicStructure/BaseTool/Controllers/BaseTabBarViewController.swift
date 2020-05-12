//
//  BaseTabBarViewController.swift
//  SwiftBasicStructure
//
//  Created by 李鹏跃 on 2020/5/12.
//  Copyright © 2020 13lipengyue. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController, UITabBarControllerDelegate {
    private var itemNormalColor:UIColor = UIColor.black
    private var itemSelectedColor:UIColor = UIColor.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewController(vc: BaseViewController(), normalImg: "TabBar0_selected",selectedImg: "TabBar0_selected", title: "首页")
        addChildViewController(vc: BaseViewController(), normalImg: "TabBar0_selected",selectedImg: "TabBar0_selected", title: "我的")
        self.tabBar.isTranslucent = false
        self.tabBar.barTintColor = .white
    }
    
    
    //  重载添加子视图控制器
    func addChildViewController(vc: UIViewController, normalImg: String, selectedImg: String, title: String) {
     let tabBarItem = UITabBarItem.init(title: title, image: UIImage(named: normalImg), selectedImage: UIImage(named: selectedImg)?.withRenderingMode(.alwaysOriginal));
        
        //  修改tabbar 文字颜色
        tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: itemNormalColor], for: .normal)
        tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: itemSelectedColor], for: .selected)
        
        tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10)], for: .normal)
        
        vc.tabBarItem = tabBarItem
        //  创建导航视图控制器
        let nav = BaseNavigationViewController(rootViewController: vc)
        
        //  添加子视图控制器
        addChild(nav)
    }
}
