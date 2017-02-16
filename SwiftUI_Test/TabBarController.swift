//
//  TabBarController.swift
//  SwiftUI_Test
//
//  Created by ZJJ on 16/10/8.
//  Copyright © 2016年 ZJJ. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 13)], for: UIControlState())
        UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 13)], for: UIControlState.selected)
        
        let oneVc = ViewController()
        let twoVc = MyFriendsViewController()
        let threeVc = FindViewController()
        let fourVc = SettingsViewController()
        
        let nav1 = UINavigationController(rootViewController: oneVc)
        let nav2 = UINavigationController(rootViewController: twoVc)
        let nav3 = UINavigationController(rootViewController: threeVc)
        let nav4 = UINavigationController(rootViewController: fourVc)
        
        nav1.title = "聊天"
        nav2.title = "好友"
        nav3.title = "发现"
        nav4.title = "设置"
        
        nav1.tabBarItem.image = UIImage(named: "jiyinjiemi")
        nav1.tabBarItem.selectedImage = UIImage(named: "jiyinjiemi_s")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        nav2.tabBarItem.image = UIImage(named: "jiankangguanli")
        nav2.tabBarItem.selectedImage = UIImage(named: "jiankangguanli_s")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        nav3.tabBarItem.image = UIImage(named: "shishangshenghuo")
        nav3.tabBarItem.selectedImage = UIImage(named: "shishangshenghuo_s")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        nav4.tabBarItem.image = UIImage(named: "jiyinjiemi")
        nav4.tabBarItem.selectedImage = UIImage(named: "jiyinjiemi_s")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        self.viewControllers = [nav1,nav2,nav3,nav4]
        
        
        //透明度 默认为 true
        //self.tabBar.isTranslucent = false
        //tabBar背景色 默认为 nil
        //self.tabBar.barTintColor = UIColor.white
        //如果不设置默认 self.selectedIndex = 0
        //self.tabBar.tintColor = UIColor.green
        self.selectedIndex = 0
        self.tabBar.tintColor = UIColor.green
    }
    
    // MARK: - UITabBarControllerDelegate
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
        print("SelectControllerIndex:\(self.selectedIndex)")
        if self.selectedIndex == 0 {
            self.tabBar.tintColor = UIColor.green
        }else if self.selectedIndex == 1{
            self.tabBar.tintColor = UIColor.yellow
        }else if self.selectedIndex == 2{
            self.tabBar.tintColor = UIColor.red
        }else if self.selectedIndex == 3{
            self.tabBar.tintColor = UIColor.green
        }
        
    }
    
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
}
