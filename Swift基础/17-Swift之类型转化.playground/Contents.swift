//: Playground - noun: a place where people can play

import UIKit

// 1.之前的as的使用
let str = "www.baidu.com"
//转化成NSString
(str as NSString).substring(to: 3)



//2. as？ as!  -----> 将Any类型转化为具体类型
let dict : [String : Any] = ["name":"lnj", "age":18, "height":18.8]

//2.1> as? 的用法
//通过 as? 将字符串转化为可选类型
// as? : 转成的类型是一个可选类型，系统会自动判断tempName是否转化为了String，如果可以转化成功，那么获取字符串。如果转化不成功，则返回nil
//方法一：（一大坨代码）
let tempName = dict["name"]
let name = tempName as? String
if let name = name {  //可选绑定
    print(name)
}
//方法二：（只需两行代码）
if let name = dict["name"] as? String {
    print(name)
}


//2.2> as!的用法（不建议使用，非常危险）
//通过 as! 转化成具体类型
// as! :  将Any?类型转化为具体类型
//注意：如果转化不成功，程序会直接崩溃
//建议：如果确定能转化成功，再用 as!. 平时不建议使用
let tempName2 = dict["name"]
let name2 = tempName2 as! String

