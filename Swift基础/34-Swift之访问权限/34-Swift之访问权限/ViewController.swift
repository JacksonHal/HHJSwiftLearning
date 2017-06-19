//
//  ViewController.swift
//  34-Swift之访问权限
//
//  Created by meixiang02 on 2017/6/19.
//  Copyright © 2017年 好杰. All rights reserved.
//

import UIKit

/*
     1> internal : 内部的
        1.默认情况下所有的类&属性&方法都可以访问的权限是internal
        2.在本模块(项目/包/target)中可以访问 
     2> private : 私有的
        1.只有在本类中可以访问
     3> open : 公开的
        1.可以跨模块(项目/包/target)都是可以访问的
     4> filePrivate : Swift 3.0新出现的 本文件中可以访问的
        1.只要是在本文件中都是可以进行访问
 */

fileprivate var height : Double = 0
class ViewController: UIViewController {

    var name : String = ""
    private var age : Int = 0
//    filePrivate var height : Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //访问name
        name = "lnj"
        print(name)
        
        //访问age
        age = 18
        print(age)
        
        //创建UIView对象  UIView类的访问权限是open
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.tag = 1000
        view.frame = CGRect(x: 9, y: 9, width: 199, height: 200)
        
        //访问height
        height = 33
    }

    


}

class Person {
    func test() {
        let vc = ViewController()
        vc.name = "hh"
        
        //vc.age  不可以访问
        
        height = 24
    }
}

