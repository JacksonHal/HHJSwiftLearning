//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//呵呵
//哈哈
/*1.注意点一：
    在开发中,优先使用常量（let）,只有发现标识符需要修改怙,再使用变量（var）
    目的：防止唨其䔨不希望修改的地方;不小心将值改掉;
*/


/*
 2.注意点二：
    常量的本质:指向的内存地址不可以修改,但是可以通过内存地址找到对应的对象,之后修改对象内部的属性;
 */


/*
 OC中创建对象:
    UIView *view = [[UIView alloc] init];
 Swift中创建对象:
    类型()
 */

//变量
var a : Int = 2;
a = 10

//对象
var view : UIView = UIView()
//对变量来说完全可以下边这样写
view = UIView()

//1>指向的内存地址不可以修改   不可以再这样写view2 = UIView()
let view2 : UIView = UIView()
//2>但是可以通过内存地址找到对应的对象，之后修改对象内部的属性
view2.backgroundColor = UIColor.blue
view2.alpha = 0.5
view.addSubview(view2)

