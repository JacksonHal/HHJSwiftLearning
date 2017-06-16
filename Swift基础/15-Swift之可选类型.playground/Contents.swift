//: Playground - noun: a place where people can play

import UIKit


//在开发中，只有可选类型才可以赋值为nil，其他的类型都不能赋值为nil
//var str : String = nil 此写法错误
//var a : Int = nil  此写法错误

//1.定义可变类型：泛型集合
//1> 定义方式一：
var opStr : Optional<String> = nil
//2> 定义方式二：被称为语法糖
var opStr2 : String? = nil

//2.给可选类型赋值
//2.1> 赋值方式一
opStr2 = Optional("zys")
//2.2> 赋值方式二
opStr2 = "hehe"

//3.取出可选类型中的值     可选类型 + ！----->称为强制解包
print(opStr2!)

//4.注意：强制解包非常危险，如果可选类型为nil，那么强制解包就会是程序崩溃
if opStr2 != nil {
    print(opStr2!)
}

//5.可选择绑定（固定格式）：该语句用于可选类型，使我们使用起来可选类型非常方便
//5.1> 判断opStr2是否有值，如果没有值，则直接不执行{}里的语句
//5.2> 如果opStr2有值，那么系统就会自动解包，并且会将解包后的结果赋值给前面的opStr3
if let opStr3 = opStr2 {
    print(opStr3)
}

//也可以这样写
if let opStr2 = opStr2 {
    print(opStr2)
}
