//
//  ViewController.swift
//  33-Swift之懒加载的使用
//
//  Created by meixiang02 on 2017/6/19.
//  Copyright © 2017年 好杰. All rights reserved.
//

import UIKit

/*
 懒加载：lazy
    1> 用到时才会加载
    2> 多次使用时，只会加载一次
 */

class ViewController: UIViewController {

    //方式一：
    lazy var dataArray1 : [String] = ["lnj", "hhj", "zys"]
    //方式二：
    lazy var dataArray2 : [String] = {
        let dataArray2 = ["lnj", "hhj", "zys"]
        
        //验证一下  刚启动时不打印，只有用到时打印，并且只打印一次
        print("--------------")
        return dataArray2
    }()
    
    //方式一和方式二的使用场景
    //比如创建一个btn
    //方式一：仅仅能创建btn
    //lazy var btn : UIButton = UIButton()
    
    //方式二：既可以创建btn，又可以设置btn的一些属性
    lazy var btn : UIButton = {
        let btn : UIButton = UIButton()
        btn.backgroundColor = UIColor.red
        btn.setTitle("点击", for: UIControlState.normal)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(dataArray2)
    }

}

