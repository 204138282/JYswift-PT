//
//  MsgCollectionViewCell.swift
//  Swift_LX
//
//  Created by 师悦科技 on 2017/3/9.
//  Copyright © 2017年 Kbird. All rights reserved.
//

import UIKit

class MsgCollectionViewCell: UICollectionViewCell {
 
    var backImageView: UIImageView = UIImageView()
    var titleLable: UILabel = UILabel()
  
    override func layoutSubviews() {
//        constrain(backImageView,titleLable) { backImageView, titleLable in
//            backImageView.width == (backImageView.superview!.width - 50) * 0.5
//            titleLable.width == backImageView.width - 50
//            
//        }
        backImageView.frame = CGRect.init(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        backImageView.backgroundColor = UIColor.yellow
        self.contentView.addSubview(backImageView)
        
        titleLable.frame = CGRect.init(x: 5, y: self.center.y, width: 40, height: 20)
        self.contentView.addSubview(titleLable)
        
    }
    
    
}
