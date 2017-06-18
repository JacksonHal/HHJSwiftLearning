//: Playground - noun: a place where people can play

import UIKit

//1.如何定义类
class Person {
    //类的属性(一般都用var)  注意：类里边的成员属性必须初始化，否则会报错
    //如果属性是值类型，则初始化为空值 (根据个人习惯而定)
    //如果属性是对象，则初始化为nil   (根据个人习惯而定)
    var name : String = ""
    var age : Int = 0
    var view : UIView?

}

//2.创建类的对象
let p = Person()
p.name = "lnj"
p.age = 18
p.view = UIView()