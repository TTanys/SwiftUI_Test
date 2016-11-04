//
//  ViewController.swift
//  SwiftUI_Test
//
//  Created by ZJJ on 16/9/30.
//  Copyright © 2016年 ZJJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "聊天"
        
        let btn = UIButton(type: .Custom)
        btn.frame = CGRect(x: 10, y: 30, width: 100, height: 30)
        btn.backgroundColor = UIColor.redColor()
        btn.tag = 3
        btn.addTarget(self, action:#selector(btnOnClick(_:)), forControlEvents: .TouchUpInside)
        view .addSubview(btn)
        
        var i = 3
        i = i + 1
        
        
        let myTableView = UITableView(frame: CGRectMake(0, 64, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height - 64 - 49), style: UITableViewStyle.Plain)
        myTableView.backgroundColor = UIColor.orangeColor()
        myTableView.delegate = self
        myTableView.dataSource = self
        view.addSubview(myTableView)
        
        
    }
    
    func btnOnClick(button: UIButton){
       print("hello button\(button.tag)")
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier: String = "CellId"
        var chatCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? ChatTableViewCell
        if chatCell == nil {
            chatCell = ChatTableViewCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdentifier)
            
        }
        if indexPath.row%2 == 0 {
            chatCell?.headImgView.image = UIImage(named: "Image1")
            chatCell?.nameLab.text = "MyFirstSwift"
            chatCell?.summaryLab.text = "Infomation"
        }else{
            chatCell?.headImgView.image = UIImage(named: "Image2")
            chatCell?.nameLab.text = "姓名姓名姓名"
            chatCell?.summaryLab.text = "摘要摘要摘要摘要摘要"
        }
        
        let chatModel = ChatModel()
        chatCell?.updateWithModel(chatModel)
        
        return chatCell!
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Row:\(indexPath.row)")
        let detailVc = ZZDetailViewController()
        
        self.navigationController?.pushViewController(detailVc, animated: true)
        
    }
    
}

