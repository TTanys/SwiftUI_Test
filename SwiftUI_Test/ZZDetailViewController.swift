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
        view.backgroundColor = UIColor.greenColor()
        
        let btn = UIButton(type: UIButtonType.Custom)
        btn.frame = CGRect(x: 50, y: 50, width: 100, height: 40)
        btn.backgroundColor = UIColor.redColor()
        btn.tag = 10
        btn.addTarget(self, action: #selector(btnClicked(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
        
        
        let btn2 = UIButton(type: UIButtonType.Custom)
        btn2.frame = CGRect(x: 50, y: UIScreen.mainScreen().bounds.size.height-40, width: 100, height: 40)
        btn2.backgroundColor = UIColor.redColor()
        btn2.tag = 20
        btn2.addTarget(self, action: #selector(btnClicked(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn2)

        
        // Do any additional setup after loading the view.
    }
    
    func btnClicked(btn: UIButton) -> Void {
        print("btnClicked\(btn.tag)")
        print("修改测试")
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.hidden = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.hidden = false
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
