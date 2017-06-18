//: Playground - noun: a place where people can play

import UIKit

//1.枚举类型的定义
enum NetWorkType {
    case get
    case put
    case post
}

//2.创建具体类型的值
let type1 : NetWorkType = .put     //如果知道枚举类型里的值，可以这样写，如果不知道，就用下边的方式来获取
let type2 = NetWorkType.post


//3.给枚举类型进行赋值 (注意：如果不指定枚举变量里边的元素的类型的话，里边的元素是没有值的)
enum Dirction : Int {
    case east = 0
    case sourth
    case west = 8
    case north
}
let d1 : Dirction = .east
//d2是Dirction的可选类型
let d2 = Dirction(rawValue: 9)     //如果不指定枚举的类型的话，是不能通过此方法获取到值得


//4.枚举类型定义方式二：
enum Type : Int {
    case east = 0, south, west, north
}


