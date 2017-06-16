//: Playground - noun: a place where people can play

import UIKit

/*
 数组的使用
    1.数组的定义
        1> 定义不可变数组
        2> 定义可变数组
    2.对可变数组的基本操作
        增删改查
    3.数组的遍历
        1> 获取数组的长度
        2> 数组的遍历(i/item/(index-item))
    4.数组的合并
        注意：只有两个数组里边的元素类型相同时才可以合并
 */

//1.数组的定义
//1> 定义不可变数组  let
//数组的类型：1> Array<String> 2> [String](推荐使用)
let array : Array<String> = ["hhj", "zys", "zwj"]
let  array2 : [String] = ["hhj", "zys", "zwj"]

//2> 定义可变数组 var
var array3 = Array<String>()
var array4 = [String]()



//2.对可变数组的一些基本操作: 增 删 改 查
//增
array3.append("hhj")
array3.append("zys")

//删
array3.remove(at: 0)

//改
array3[0] = "hello"

//获取
let item = array3[0]



//3.对数组的遍历
//获取数组的长度
let count = array2.count

//对数组进行遍历（可以获取下标值）
for i in 0..<count {
    print(i)
    print(array2[i])
}

//对数组进行遍历（不可以获取下标值）
for item in array2 {
    print(item)
}

//对数组进行遍历 (既可以获取下标，又可以获取元素)
for (index,item) in array2.enumerated() {
    print(index)
    print(item)
}


//4.数组的合并
//如果两个数组的元素的类型都相同，则可以直接通过相加进行合并,如果类型不相同时，不可以合并
let resultArray = array + array2
