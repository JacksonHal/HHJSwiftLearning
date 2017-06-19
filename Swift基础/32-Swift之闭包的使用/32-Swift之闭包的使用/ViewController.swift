//
//  ViewController.swift
//  32-Swift之闭包的使用
//
//  Created by meixiang02 on 2017/6/19.
//  Copyright © 2017年 好杰. All rights reserved.
//

import UIKit

//Swift不需要导入其他的类既可以使用功能

class ViewController: UIViewController {
    
    //定义一个成员属性
    var request : HTTPRequestTool?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //初始化成员属性
        request = HTTPRequestTool()
    }

    //重写系统的方法 前边加上override
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        /*
         self. 一般是可以省略掉，但有两种情况下是不可以省略掉
            1> 如果该方法中有局部变量和成员属性有歧义(名称相同)
            2> 在闭包中使用成员属性
         
         */
        //解决循环引用问题
        //解决方案一(有点麻烦)：
        /*
        weak var weakSelf : ViewController? = self
        request?.requestData({ (jsonData : String) in
            print("请求到的数据是:\(jsonData)")
            weakSelf?.view.backgroundColor = UIColor.red
        })
        */
        
        //解决方案二(非常方便，推荐使用)：(闭包)前加上[weak self]
        /*
        request?.requestData({ [weak self] (jsonData : String) in
            self?.view.backgroundColor = UIColor.red
        })
        */
        
        //解决方案三(也非常方便，推荐使用)：(闭包)前加上[weak self]   
        //使用时注意：如果对象self销毁了，容易造成野指针
        //unowned  ---->  OC 中的 unsafe_unretained(容易造成野指针)
        request?.requestData({ [unowned self] (jsonData : String) in
            self.view.backgroundColor = UIColor.red
        })
        
        //尾随闭包(刚学时，不建议使用),
        //如果在函数中，闭包是最后一个参数，那么可以写成尾随闭包  将{}写在()后面
        request?.requestData() { [unowned self] (jsonData : String) in
            self.view.backgroundColor = UIColor.red
        }
        //如果闭包是唯一一个参数，也可以将前面的 () 省略不写
        request?.requestData { [unowned self] (jsonData : String) in
            self.view.backgroundColor = UIColor.red
        }
        
        
    }
    
    deinit {
        print("ViewController-----dealloc")
    }


}

