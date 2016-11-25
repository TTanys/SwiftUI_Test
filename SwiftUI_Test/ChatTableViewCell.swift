//
//  ChatTableViewCell.swift
//  SwiftUI_Test
//
//  Created by ZJJ on 16/10/8.
//  Copyright © 2016年 ZJJ. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    var headImgView: UIImageView!
    var nameLab: UILabel!
    var summaryLab: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.white
        
        self.configSubViews()
        
    }
    
    func configSubViews() -> Void {
        headImgView = UIImageView(frame: CGRect(x: 10, y: 10, width: 80, height: 40))
        headImgView.contentMode = UIViewContentMode.scaleAspectFill
        headImgView.layer.cornerRadius = 6
        headImgView.layer.masksToBounds = true
        headImgView.layer.borderColor = UIColor.red.cgColor
        headImgView.layer.borderWidth = 0.5
        self.contentView.addSubview(headImgView!)
        nameLab = UILabel(frame: CGRect(x: (headImgView?.frame)!.maxX+10, y: 10, width: 150, height: 16))
        nameLab?.font = UIFont.systemFont(ofSize: 15)
        nameLab?.textColor = UIColor.gray
        self.contentView.addSubview(nameLab!)
        summaryLab = UILabel(frame: CGRect(x: (headImgView?.frame)!.maxX+10, y: (headImgView?.frame)!.maxY-15, width: 150, height: 15))
        summaryLab?.font = UIFont.systemFont(ofSize: 14)
        summaryLab?.textColor = UIColor.lightGray
        self.contentView.addSubview(summaryLab!)
        
    }
    
    internal func updateWithModel(_ model: ChatModel) -> Void {
        print("调用了")
        
        //        headImgView.image = UIImage(named: "Image1")
        //        nameLab.text = "姓名姓名"
        //        summaryLab.text = "说明说明说明"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
