//: Playground - noun: a place where people can play

import UIKit


//1.Switch的基本使用
/*
 和OC的区别
    1> switch后面的()可以省略
    2> case语句结束时，可以不加break
 */
let sex = 0
switch sex {
case 0:
    print("男")
case 1:
    print("女")
default:
    print("其他")
}

//2.Switch的基本用法的补充

/*
 1> 在swift中，switch后面的case可以判断多个条件
 2> 如果希望case结束时，产生case穿透，case结束时，加上fallthrough
 */
switch sex {
case 0 , 1:
    print("正常人")
    fallthrough//使case具有穿透性
default:
    print("人妖")
    
}

//3.Switch的判断其他的类型（OC中的只能判断整型）
//3.1 判断浮点型
let f = 3.4343
switch f {
case 3.4343:
    print("判断正确")
default:
    print("判断失败")
}

//3.2 判断字符串
let a = 20
let b = 49
let opStr = "*"
var result = 0
switch opStr {
case "+":
    result = a + b
    case "-":
        result = a - b
    case "*":
        result = a * b
    case "/":
        result = a / b
default:
    print("不合理的操作")
    
}

//3.3 判断区间类型
/*
 区间
    1> 半开半闭区间 0-9 0..<10
    2> 闭区间      0-9 0...9
    错误写法 1-9 0<.<9
    正确写法 1-9 1..<10或者1...9
 */
let score = 60
switch score {
case 0..<60:
    print("不及格")
case 60..<80:
    print("及格")
case 80..<90:
    print("良好")
case 90...100:
    print("优秀")
default:
    print("不合理的分数")
}



