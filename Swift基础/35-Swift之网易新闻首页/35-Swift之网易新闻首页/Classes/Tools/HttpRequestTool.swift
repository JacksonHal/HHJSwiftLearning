//
//  HttpRequestTool.swift
//  35-Swift之网易新闻首页
//
//  Created by meixiang02 on 2017/6/20.
//  Copyright © 2017年 HHJ. All rights reserved.
//

import UIKit
import Alamofire

enum MethodType : Int {
    case get
    case post
}

class HttpRequestTool: NSObject {
    
    //class方法  ---  相当于OC中的 +方法
    class func requestData(_ url : String, type : MethodType, parameters : [String : Any]? = nil,  successed : @escaping (_ result : Any) -> () ) {
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
        Alamofire.request(url, method: method, parameters: parameters).responseJSON { (response) in
            //1.校验是否有结果
            guard let result = response.result.value else {
                print(response.result.error!)
                return
            }
            //2.将结果回调出去
            successed(result)
        }
    }
}
