//: Playground - noun: a place where people can play

import UIKit

class Person {
    var name : String = ""
    var age : Int = 0
    
    //在Swift开发中，如果对象的函数中，用到成员属性，那么self.是可以省略不写的
    //但是注意：如果在函数中，有和成员属性重名的局部变量，那么self.不能省略
    
    init(newName : String , newAge : Int) {
        name = newName
        age = newAge
    }
    
    //参数名称与成员变量名称重名   self.不能省略
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
    
    //注意：如果有自定义构造函数，那么会将系统提供的构造方法给覆盖掉
    //如果想保留系统提供的构造方法，可以重新实现以下 如下：
    init() {
    
    }
    
    //如下的构造方法 
    //注意如果有好多的成员变量的话，里边可能要写一大坨，很不方便
    //这个时候最简单的方法是使用  KVC条件 详见：26-Swift之类的构造函数(KVC).playground
    
    /*(不推荐使用这种初始化方法)*/
    init(dict : [String : Any]) {
        if let name = dict["name"] as? String {
            self.name = name
        }
        if let age = dict["age"] as? Int {
            self.age = age
        }
    }
    
    
    
    
}

let p1 = Person(newName: "why", newAge: 38)
print(p1.name, p1.age)
let p2 = Person(name: "lnj", age: 18)
print(p2.name, p2.age)
let p3 = Person(dict: ["name" : "hhj", "age" : 26])
print(p3.name)


		