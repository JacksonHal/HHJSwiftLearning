//: Playground - noun: a place where people can play

import UIKit


//Person类
class Person {
    var name : String = ""
    var age : Int = 0
    
    var book : Book?
    
    deinit {
        print("Person对象销毁了")
        
    }
}


class Book {
    var price : Double = 0
    
    /*
     OC中表示的弱引用
        __weak / __unsafe_unretained(容易造成野指针错误)
     Swift中表示的弱引用
        weak(建议使用) / unowned(容易造成野指针错误,不建议使用)
     */
    weak var person :  Person?
    
    deinit {
        print("Book对象销毁了")
        
    }
}

//制造循环引用
var p : Person? = Person()
p!.name = "lnj"
var b : Book? = Book()
b!.price = 60.0

//p持有b
p!.book = b
//b持有p
b!.person = p

//从而造成了循环引用  当两个对象置为nil时，对象并不会销毁，通过deinit的调用来验证
p = nil
b = nil
//显然不会调用deinit函数  解决循环引用的方法是在var person :  Person? 或者 var book : Book?前加上weak
