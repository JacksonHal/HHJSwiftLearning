//: Playground - noun: a place where people can play

import UIKit

/*
 swfit中的if和OC中区别
    1> if后面的()可以省略
    2> 没有非0即真 Bool(true/false)
 */

let score = 93.5

if score < 0 || score > 100 {
    print("不合理的分数")
}else if score < 60 {
    print("不及格")
}else if score < 80 {
    print("及格")
}else if score < 90 {
    print("良好")
}else {
    print("优秀")
}
