//
//  HTTPRequestTool.swift
//  32-Swift之闭包的使用
//
//  Created by meixiang02 on 2017/6/19.
//  Copyright © 2017年 好杰. All rights reserved.
//

import UIKit

class HTTPRequestTool {

    var succ : ((_ jsonData : String) -> ())?
    
    
    //闭包(与OC中的block相似)：(参数) -> (返回值)
    //参数是一个闭包的类型
    //注意：如果闭包在本方法中使用，@escaping 不用加在闭包的前面；如果是闭包在该方法内的另一个方法使用，必须加上 @escaping
    //如果不显示外部参数就在前边加一个 _
    func requestData(_ success : @escaping (_ jsonData : String) -> ()) {
        
        succ = success
        
        //1.发送异步网络请求
        DispatchQueue.global().async {
            print("开始发送网络请求:\(Thread.current)")
            
            //2.回到主线程中
            DispatchQueue.main.sync {
                
                print("回到主线程:\(Thread.current)")
                //3.将请求到的数据回调出去
                success("jsonData")
            }
        }
        
    }
    
}
