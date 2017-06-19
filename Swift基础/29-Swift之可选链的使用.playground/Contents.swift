//: Playground - noun: a place where people can play

import UIKit


//1.创建三个类
//人
class Person {
    var name : String = ""
    
    var dog : Dog?
    
}

//狗
class Dog {
    var weight : Double = 0
    
    var toy : Toy?
}

//玩具
class Toy {
    var price : Double = 0
    
    func run() {
        print("玩具猫在跑")
    }
}

//2.创建类的对象
let per = Person()
per.name = "lnj"
let dog = Dog()
dog.weight = 30
let toy = Toy()
toy.price = 400

per.dog = dog
dog.toy = toy

//3.可选链的使用
//3.1 取出lnj的狗的玩具的价格
//方法一（强制解包）：此方法非常的危险，不能使用
/*
let d = per.dog
let t = d!.toy
let price = t!.price
*/

//方法二：此方法非常的麻烦
if let dog = per.dog {
    if let toy = dog.toy {
        let price = toy.price
        print(price)
    }
}

//方法三：使用可选链 
// ?. 就是可选链：系统会自动判断可选类型是否有值，如果有值，则解包；如果没有值，则赋值为nil
// 注意：可选链获取的值，一定是一个可选类型
let price = per.dog?.toy?.price
//也可以这样写
if let price = per.dog?.toy?.price {
    print(price)
}

//3.2 给lnj的狗的玩具的价格重新赋值
per.dog?.toy?.price = 69


//3.3 可选链调用方法
//方法一：太麻烦了
if let dog = per.dog {
    if let toy = dog.toy {
        toy.run()
    }
}
//方法二：可选链调用  一行代码搞定
per.dog?.toy?.run()



		
