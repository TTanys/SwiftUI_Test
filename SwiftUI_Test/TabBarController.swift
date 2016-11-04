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
        //self.tabBar.translucent = false
        self.tabBar.tintColor = UIColor.greenColor()
        self.tabBar.barTintColor = UIColor.whiteColor()
        
        UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName:UIFont.systemFontOfSize(13)], forState: UIControlState.Normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName:UIFont.systemFontOfSize(13)], forState: UIControlState.Selected)
        
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
        nav1.tabBarItem.selectedImage = UIImage(named: "jiyinjiemi_s")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        nav2.tabBarItem.image = UIImage(named: "jiankangguanli")
        nav2.tabBarItem.selectedImage = UIImage(named: "jiankangguanli_s")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        nav3.tabBarItem.image = UIImage(named: "shishangshenghuo")
        nav3.tabBarItem.selectedImage = UIImage(named: "shishangshenghuo_s")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        nav4.tabBarItem.image = UIImage(named: "jiyinjiemi")
        nav4.tabBarItem.selectedImage = UIImage(named: "jiyinjiemi_s")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        self.viewControllers = [nav1,nav2,nav3,nav4]
        
    }
    
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        
        print("SelectControllerIndex:\(self.selectedIndex)")
        if self.selectedIndex == 0 {
            self.tabBar.tintColor = UIColor.greenColor()
        }else if self.selectedIndex == 1{
            self.tabBar.tintColor = UIColor.yellowColor()
        }else if self.selectedIndex == 2{
            self.tabBar.tintColor = UIColor.redColor()
        }else if self.selectedIndex == 3{
            self.tabBar.tintColor = UIColor.greenColor()
        }
        
    }
    
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
}
