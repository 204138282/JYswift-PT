//
//  HomeTableViewCell.swift
//  Swift_LX
//
//  Created by 师悦科技 on 2017/3/8.
//  Copyright © 2017年 Kbird. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    var nameLabel = UILabel()
    var dateLabel = UILabel()
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        setupSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupSubviews() {
        nameLabel = UILabel.init(frame: CGRect.init(x: 10, y: 10, width: 100, height: 20))
        nameLabel.layer.cornerRadius = 10
        nameLabel.layer.masksToBounds = true
        self.contentView.addSubview(nameLabel)
        
        dateLabel = UILabel.init(frame: CGRect.init(x: nameLabel.frame.origin.x+nameLabel.frame.size.width + 10,y: nameLabel.frame.origin.y, width: 100, height: 20))
        dateLabel.font = UIFont.systemFont(ofSize: 18)
        dateLabel.textColor = UIColor.black
        self.contentView.addSubview(dateLabel)
        
    }
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
