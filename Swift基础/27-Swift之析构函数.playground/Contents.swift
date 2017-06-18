//: Playground - noun: a place where people can play

import UIKit

class Person {
    var name : String = ""
    var age : Int = 0
    
    //重写析构方函数，监听对象的销毁
    deinit {
        print("Person --- deinit")
    }
}

var p : Person? = Person()
//当一个强引用指针强引用对象的时候，对象并不会销毁。所以说要想实现deinit时。必须将对象置为nil
//只有当p是一个Person的可选类型时，p才可以置为nil
p = nil
		