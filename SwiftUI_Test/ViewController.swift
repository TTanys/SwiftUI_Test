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
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 10, y: 30, width: 100, height: 30)
        btn.backgroundColor = UIColor.red
        btn.tag = 3
        btn.addTarget(self, action:#selector(btnOnClick(_:)), for: .touchUpInside)
        view .addSubview(btn)
        
        var i = 3
        i = i + 1
        
        
        let myTableView = UITableView(frame: CGRect(x: 0, y: 64, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height - 64 - 49), style: UITableViewStyle.plain)
        myTableView.backgroundColor = UIColor.orange
        myTableView.delegate = self
        myTableView.dataSource = self
        view.addSubview(myTableView)
        
        
    }
    
    func btnOnClick(_ button: UIButton){
       print("hello button\(button.tag)")
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier: String = "CellId"
        var chatCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? ChatTableViewCell
        if chatCell == nil {
            chatCell = ChatTableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: cellIdentifier)
            
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row:\(indexPath.row)")
        let detailVc = ZZDetailViewController()
        
        self.navigationController?.pushViewController(detailVc, animated: true)
        
    }
    
}

