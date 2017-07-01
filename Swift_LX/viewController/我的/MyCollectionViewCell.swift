//
//  MyCollectionViewCell.swift
//  Swift_LX
//
//  Created by 师悦科技 on 2017/3/10.
//  Copyright © 2017年 Kbird. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet var headImageView: UIImageView!   /// 图片
    @IBOutlet var titleLabel: UILabel!  ///标题
    @IBOutlet var CGCount: UILabel!     ///总场馆数
    @IBOutlet var canYYCount: UILabel!  ///还可预约数
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
