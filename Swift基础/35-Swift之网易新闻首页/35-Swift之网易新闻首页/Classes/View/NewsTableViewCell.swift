//
//  NewsTableViewCell.swift
//  35-Swift之网易新闻首页
//
//  Created by meixiang02 on 2017/6/20.
//  Copyright © 2017年 HHJ. All rights reserved.
//

import UIKit
import Kingfisher

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var imagesrc: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var source: UILabel!
    @IBOutlet weak var replycount: UILabel!
    
    
    var newModel : NewsModel? {
        didSet {
            title.text = newModel?.title
            source.text = newModel?.source
            replycount.text = "\(newModel?.replyCount ?? 0)评论"
            
            //imageView加载图片
            imagesrc.kf.setImage(with: URL(string: newModel?.imgsrc ?? ""))
            
        }
    }
    
}
