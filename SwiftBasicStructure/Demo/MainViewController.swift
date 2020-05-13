//
//  MainViewController.swift
//  SwiftBasicStructure
//
//  Created by 李鹏跃 on 2020/5/13.
//  Copyright © 2020 13lipengyue. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("""
            screenH: \(BaseSize.screenH)
            screenW: \(BaseSize.screenW)
            statusBarH: \(BaseSize.statusBarH)
            navBarH: \(BaseSize.navBarH)
            navTotalH: \(BaseSize.navTotalH)
            tabbarH: \(BaseSize.tabbarH)
            homeBarH: \(BaseSize.homeBarH)
            screen_navH: \(BaseSize.screen_navH)
            screen_nav_tabBarH: \(BaseSize.screen_nav_tabBarH)
            """)
        let button = UIButton()
        button.frame = CGRect.init(x: 100, y: 100, width: 100, height: 100)
        button.backgroundColor = BaseColor.hex("0x0F0FF0",alpha: 1)
        view.addSubview(button)
        button.setTitle("跳转", for: .normal)
        button.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        
    }
    
    @objc private func clickButton() {
        let vc = BasePresentViewController()
        let button = UIButton()
        button.frame = CGRect.init(x: 300, y: 100, width: 100, height: 100)
        button.backgroundColor = BaseColor.hex("0x0000F0",alpha: 1)
        button.setTitle("->", for: .normal)

        vc.animationView = button
        vc.view .addSubview(button)
        vc.presentConfig.presentStyle = Int(PresentAnimationStyleRight_left.rawValue)
        vc.presentConfig.dismissStyle = Int(DismissAnimationStyleZoom.rawValue)
        self.present(vc, animated: true, completion: nil)
    }


}
