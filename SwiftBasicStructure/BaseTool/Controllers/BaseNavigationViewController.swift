//
//  BaseNavigationViewController.swift
//  SwiftBasicStructure
//
//  Created by 李鹏跃 on 2020/5/12.
//  Copyright © 2020 13lipengyue. All rights reserved.
//

import UIKit

class BaseNavigationViewController: UINavigationController, UINavigationControllerDelegate, UIGestureRecognizerDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        if (responds(to: #selector(getter: interactivePopGestureRecognizer))) {
            interactivePopGestureRecognizer?.delegate = self
            delegate = self
        }
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if (responds(to: #selector(getter:interactivePopGestureRecognizer)) && animated) {
            interactivePopGestureRecognizer?.isEnabled = false
        }
        return super.pushViewController(viewController, animated: animated)
    }
    
    override func popViewController(animated: Bool) -> UIViewController? {
        if (responds(to: #selector(getter:interactivePopGestureRecognizer)) && animated) {
            interactivePopGestureRecognizer?.isEnabled = false
        }
        return super.popViewController(animated: animated)
    }
    
    override func popToRootViewController(animated: Bool) -> [UIViewController]? {
        if (responds(to: #selector(getter:interactivePopGestureRecognizer)) && animated) {
            interactivePopGestureRecognizer?.isEnabled = false
        }
        return super.popToRootViewController(animated: animated)
    }
    
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
         if ( gestureRecognizer == self.interactivePopGestureRecognizer ) {
            if ( self.viewControllers.count < 2 || self.visibleViewController == self.viewControllers.first){
                 return false;
             }
         }
         return true;
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        interactivePopGestureRecognizer?.isEnabled = true;
    }
}
