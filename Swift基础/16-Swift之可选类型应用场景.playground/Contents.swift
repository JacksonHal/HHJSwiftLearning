//: Playground - noun: a place where people can play

import UIKit

//总结：只要一个类型有可能为nil，那么这个标识符的类型一定是可选类型

//应用场景1：将字符串转换成Int类型
let str = "123"
let num : String? = String(str)  //Option + 鼠标左键   可以看到num是String的可选类型
print(num!)

//应用场景2：根据文件的名称：haha.plist 获取文件的路径
let path : String? = Bundle.main.path(forResource: "haha.plist", ofType: nil)

//应用场景3：将字符串转化为NSUrl
//如果字符串中有中文，就有可能转化不成功，返回nil
let url : NSURL? = NSURL(string:"www.baidu.com")  //swfit2.0的时候这样写
//swift3.0以后写成下边这种形式
let url2 : URL? = URL(string: "www.baidu.com")

//应用场景4：从字典中取出元素
let dict : [String : Any] = ["name":"hehe", "age":19]
let value : Any? = dict["name"]


