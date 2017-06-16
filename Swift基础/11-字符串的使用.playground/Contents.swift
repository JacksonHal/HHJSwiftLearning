//: Playground - noun: a place where people can play

import UIKit
/*
 总结：
    1.字符串的定义：
        1.不可变字符串
        2.可变字符串
    2.字符串的长度
    3.字符串的拼接
        1.字符串之间的拼接
        2.字符串与其他标识符之间的拼接"\(标识符)"
        3.字符串拼接过程中的格式化 String(formate:"%d:%d",标识符1,标识符2)
    4.字符串的截取
        1.方式一：将String转换成NSString类型之后在进行截取（推荐使用）
        2.方式二：直接使用String中的方法截取. String.Index
 */



//1.定义字符串
//1.1 定义不可变字符串
let str = "hello world!"
//1.2 定义可变的字符串
var str2 = "和哈"
str2 = "呵呵"


//2.获取字符串的长度
let len = str2.characters.count

//3.字符串的拼接
//3.1字符串之间的拼接
let str3 = "我是"
let str4 = "你大爷"
let  result = str3 + str4

//3.2字符串与其他标识符的拼接
let name = "MaoMi"
let age = 3
let height = 20
print("My name is \(name),age is \(age),height is \(height)")


//3.3字符串拼接过程中的格式化  03:13:06
let h = 3
let m = 13
let s = 6
let resultTime = String(format: "%02d:%02d:%02d", h,m,s)


//4.字符串的截取
let address = "www.baidu.com"

//方式一(比较简单)：现将String字符串转换成NSString类型  方法：(address as NSString)
let header = (address as NSString).substring(to: 3) //前三个字符
let range = NSMakeRange(4, 5)
let middle = (address as NSString).substring(with: range)
let end = (address as NSString).substring(from: 10)


//方式二（比较麻烦）：直接截取
let headerIndex = address.index(address.startIndex, offsetBy:3)
let header2 = address.substring(to: headerIndex)

//非常麻烦
let startIndex = address.index(address.startIndex, offsetBy:4)
let endIndex = address.index(address.startIndex, offsetBy:9)
let range2 = Range(startIndex..<endIndex)
let middle2 = address.substring(with: range2)

//比较麻烦
let endIndex2 = address.index(address.startIndex, offsetBy: 10)
let end2 = address.substring(from: endIndex2)


