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
        self.backgroundColor = UIColor.whiteColor()
        
        self.configSubViews()
        
    }
    
    func configSubViews() -> Void {
        headImgView = UIImageView(frame: CGRectMake(10, 10, 80, 40))
        headImgView.contentMode = UIViewContentMode.ScaleAspectFill
        headImgView.layer.cornerRadius = 6
        headImgView.layer.masksToBounds = true
        headImgView.layer.borderColor = UIColor.redColor().CGColor
        headImgView.layer.borderWidth = 0.5
        self.contentView.addSubview(headImgView!)
        nameLab = UILabel(frame: CGRectMake(CGRectGetMaxX((headImgView?.frame)!)+10, 10, 150, 16))
        nameLab?.font = UIFont.systemFontOfSize(15)
        nameLab?.textColor = UIColor.grayColor()
        self.contentView.addSubview(nameLab!)
        summaryLab = UILabel(frame: CGRectMake(CGRectGetMaxX((headImgView?.frame)!)+10, CGRectGetMaxY((headImgView?.frame)!)-15, 150, 15))
        summaryLab?.font = UIFont.systemFontOfSize(14)
        summaryLab?.textColor = UIColor.lightGrayColor()
        self.contentView.addSubview(summaryLab!)
        
    }
    
    internal func updateWithModel(model: ChatModel) -> Void {
        print("调用了")
        
        //        headImgView.image = UIImage(named: "Image1")
        //        nameLab.text = "姓名姓名"
        //        summaryLab.text = "说明说明说明"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
