//: Playground - noun: a place where people can play

import UIKit
//需求：保存一个人的信息 name age height

//1.使用数组来保存信息
let personArray : [Any] = ["lnj", 18, 1.88]
let nameArray = personArray[0] as! String //要想获取数组中的一个元素的长度，由于personArray里的元素是Any类型，所以nameArray也是一个Any类型，所以需要强制转换为String，所以说，很麻烦的.
print(nameArray.characters.count)


//2.使用字典来保存信息
let personDict : [String : Any] = ["name":"lnj", "age":18, "height":18.8]
let nameFromDict = personDict["name"] as! String  //同上，也很麻烦
print(nameFromDict.characters.count)


//3.使用元组来保存信息
//方法一：（有时候会用到）
let personTuple1 = ("lnj", 18, 1.88)
let nameTuple = personTuple1.0
print(nameTuple.characters.count)
let ageTuple = personTuple1.1

//方法二：（最常用）
let personTuple2 = (name:"lnj", age:18, height:18.8)
personTuple2.name
personTuple2.age
personTuple2.height

//方法三：(此方法不常用)
let (name,age,height) = ("lnj", 18, 18.8)
name
age
height




