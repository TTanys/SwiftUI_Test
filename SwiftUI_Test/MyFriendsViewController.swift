//
//  MyFriendsViewController.swift
//  SwiftUI_Test
//
//  Created by ZJJ on 16/10/8.
//  Copyright © 2016年 ZJJ. All rights reserved.
//

import UIKit

class MyFriendsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "好友"
        view.backgroundColor = UIColor.orange
        
        
        var strArr = ["haha","123","nimeia","afanda","999"]
        strArr[1] = "666"
        print("\(strArr)")
        
        var dic = ["Malcolm":"Captain","Kaylee":"Mechanic","Zjj":"self"]
        dic["Jayne"] = "PublicRelations"
        dic["Zjj"] = "zhajianjun"
        print("\(dic)")
        
//        let emptyArr = String[]()
//        let emptyDic = [:]
//        print("\(emptyArr)\(emptyDic)")
        
        
    }

    

}
