//: Playground - noun: a place where people can play

import UIKit


//swift2.0+的写法
/*
 for (var i = 0; i < 10; i++) {
    print(i)
}
 */

//swift3.0之后
for i in 0..<10 {
    print(i)
}

for i in 0...9 {
    print(i)
}

//打印10次Hellow world！
//那么可以使用"_"来代替i
for _ in 0...9 {
    print("Hellow world！")
}