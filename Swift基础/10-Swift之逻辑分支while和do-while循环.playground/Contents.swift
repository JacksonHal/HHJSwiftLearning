//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//swift中while循环和OC是有区别的
/*
    1> while后面的()是可以省略的
    2> 没有非0(nil)即真 Bool(true/false)
 */

var m = 0;
while m < 10 {
    m += 1
    print(m)
}

//swift3.0之后的do-while组合改写成了repeat-while  注意：repeat{}里的代码至少执行一次
repeat {
    m -= 1
    print(m)
}while m > 8
