//: Playground - noun: a place where people can play

import UIKit

//1.没有参数，没有返回值的函数
func about() -> Void {
    print("手机的电话号码")
}
//调用
about()


//2.有参数，没有返回值的函数
func callNum(number: String) -> Void {
    print("打电话给:\(number)")
}
callNum(number: "110")


//3.没有参数，有返回值的函数
func readMassage() -> String {
    return "读取到了信息"
}
let massage = readMassage()
print(massage)



//4.有参数，有返回值的函数
func callNumToPerson(num: String) -> String {
    return "给李南江打"+num
}
print(callNumToPerson(num: "110"))
