//
//  TabBarViewController.swift
//  SwiftBasicStructure
//
//  Created by 李鹏跃 on 2020/5/13.
//  Copyright © 2020 13lipengyue. All rights reserved.
//

import UIKit

class TabBarViewController: BaseTabBarViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewController(vc: MainViewController(), normalImg: "TabBar0_selected",selectedImg: "TabBar0_selected", title: "首页")
        addChildViewController(vc: BaseViewController(), normalImg: "TabBar0_selected",selectedImg: "TabBar0_selected", title: "我的")
    }
}
