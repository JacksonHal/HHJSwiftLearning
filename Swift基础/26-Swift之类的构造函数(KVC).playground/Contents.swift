//: Playground - noun: a place where people can play

import UIKit

/*
 使用KVC条件
    1> 必须竞继承自NSObject 
    2> 必须在构造函数中，先调用super.init()
    3> 调用setValuesForKeys
    4> 如果字典中某一个key没有对应的属性，则需要重写setValue forUndefinedKey方法
 */
class Person : NSObject {
    var name : String = ""
    var age : Int = 0
    var height : Double = 0
    
    //这种初始化方法非常方便
    init(dict : [String : Any]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
}
    
}

let p = Person(dict: ["name" : "lnj", "age" : 18, "height" : 1.88, "weight" : "12"])
print(p.name, p.age, p.height)

