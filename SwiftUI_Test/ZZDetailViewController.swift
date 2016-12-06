//
//  ZZDetailViewController.swift
//  SwiftUI_Test
//
//  Created by ZJJ on 16/9/30.
//  Copyright © 2016年 ZJJ. All rights reserved.
//

import UIKit

class ZZDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "详情"
        view.backgroundColor = UIColor.white
        
        let btn = UIButton(type: UIButtonType.custom)
        btn.frame = CGRect(x: 50, y: 64, width: 100, height: 40)
        btn.backgroundColor = UIColor.red
        btn.tag = 10
        btn.addTarget(self, action: #selector(btnClicked(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
        
        
        let btn2 = UIButton(type: UIButtonType.custom)
        btn2.frame = CGRect(x: 50, y: UIScreen.main.bounds.size.height-40, width: 100, height: 40)
        btn2.backgroundColor = UIColor.red
        btn2.tag = 20
        btn2.addTarget(self, action: #selector(btn2Clicked(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn2)

        
        // Do any additional setup after loading the view.
    }
    
    func btnClicked(_ btn: UIButton) -> Void {
        print("btnClicked\(btn.tag)")
        print("修改测试")
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    func btn2Clicked(_ btn: UIButton) -> Void {
        print("btn2Clicked\(btn.tag)")
        let vc = ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
