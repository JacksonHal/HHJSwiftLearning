//
//  NewsModel.swift
//  35-Swift之网易新闻首页
//
//  Created by meixiang02 on 2017/6/20.
//  Copyright © 2017年 HHJ. All rights reserved.
//

import UIKit

class NewsModel: NSObject {

    // MARK: 定义属性
    var replyCount : Int = 0
    var title : String = ""
    var source : String = ""
    var imgsrc : String = ""
    
    init(dict : [String : Any]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}
