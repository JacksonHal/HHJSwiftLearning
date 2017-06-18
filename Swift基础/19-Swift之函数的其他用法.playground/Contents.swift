//: Playground - noun: a place where people can play

import UIKit



//1.内部参数和外部参数
//内部参数：在函数内部能看到的标识符名称，该标识符就是内部参数
//外部参数：在函数外部能看到标识符的名称，该标识符就是外部参数
//默认情况下，所有的参数都是内部参数，也是外部参数

//默认情况下
func add(num1:Int, num2:Int) -> Int {
    return num1 + num2;
}
print(add(num1: 2, num2: 3))    //调用函数,默认显示参数名称

//修改外部参数名称：在标识符前面加上外部参数的名称
func add2(a num1:Int, b num2:Int) -> Int{
    return num1 - num2
}
print(add2(a: 8, b: 6))         //调用函数,显示修改过参数的名称

//如果不希望显示外部参数，可以在标识符前加上 "_"
func add3(_ num1:Int, _ num2:Int) -> Int {
    return num1 * num2;
}
print(add3(6, 7))               //调用函数,不显示标识符的名称


//2.可变参数
func sum(num:Int...) -> Int {
    var total = 0;
    for n in num {
        total += n
    }
    return total
}
print(sum(num: 1, 3, 4, 5, 6))  //一个参数标识符，可以传多个类型相同的参数



//3.默认参数
func comeOnCoffee(coffee : String = "雀巢") -> Void {//默认设置一个参数，如果不传参数，打印默认的参数
    print(coffee)
}
print(comeOnCoffee(coffee: "给我来杯拿铁"))
print(comeOnCoffee())


//4.指针参数 参数类型前加 inout
//需求：交换两个变量的值，并且将两个变量值交换的过程封装到一个函数里边
var m : Int = 3
var n : Int = 6

func mySwap(num1 : inout Int , num2: inout Int) {
    let temp : Int = num1
    num1 = num2
    num2 = temp
}
//调用函数，传入两个变量的地址
mySwap(num1: &m, num2: &n)
print("m:\(m) , n:\(n)")
