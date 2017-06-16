//: Playground - noun: a place where people can play

import UIKit

/*
 字典的使用
    1.定义字典
        1> 定义不可变字典 let
        2> 定义可变字典 var
    2.字典的基本操作
        增删改查
    3.遍历字典
        1> 遍历字典的所有key
        2> 遍历字典的所有value
        3> 遍历字典的所有(key,value)
    4.字典的合并：
        遍历字典dict的所有的(key,value),将dict中的所有的key对应的value存入到dictM中
 */

// 1.如何定义字典
// 1> 不可变字典
let a : Int = 10
//编译器会根据[]中是一个元素(数组),还是键值对(字典)
let  dict : Dictionary<String, Any> = ["name" : "hhj", "age" : 23, "height" : 1.75]
//方法二：如果是字典的值的类型不一样，需要强制转换一下类型as Dictionary<String, Any>，否者会报错。如果值得类型都一样，不需要再强制转换
let  dict2 = ["name" : "hhj", "age" : 23, "height" : 1.75] as Dictionary<String, Any>
let  dict3 = ["name" : "haha", "name2" : "hehe"]
let dict4 = ["age1" : 12, "age2" : 14]

//方法三(推荐使用):简单，方便
let dict5 : [String : Any] = ["name" : "hhj", "age" : 23, "height" : 1.75]


// 2> 可变字典
var dictM = Dictionary<String, Any>()
var dictM2 = [String : Any]()



//2.对可变字典的基本操作
//增
dictM["name"] = "lnj"
dictM["age"] = 18
dictM["height"] = 1.88
//删
dictM.removeValue(forKey: "name")
dictM
//修改
dictM["age"] = 19
dictM
dictM.updateValue(26, forKey: "age")
dictM
//查
dictM["age"]




//3.遍历字典
//3.1> 遍历所有的key
for k in dictM.keys {
    print(k)
}

//3.2> 遍历所有的value
for v in dictM.values {
    print(v)
}

//3.3> 遍历所有的key/value
for (k , v) in dictM {
    print(k , v)
}



//4.字典的合并:  注意，不可以像数组一样相加
var dictM3 : [String : Any] = ["1" : "hh", "2" : 4]
let dic8 : [String : Any] = ["3" : "kk", "4" : 90909, "5":"ll"]
for (key,value) in dic8 {
    dictM3[key] = value
}
print(dictM3)

		