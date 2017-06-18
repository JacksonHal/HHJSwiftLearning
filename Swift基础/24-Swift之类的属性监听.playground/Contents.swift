//: Playground - noun: a place where people can play

import UIKit

//Swift中类的属性监听是通过监听器来监听的
class Person {
    var name : String = "" {
        //属性监听器  ：在使用过程中只需要使用其中一个方法即可
        //监听属性即将发生改变
        willSet(newName) {
            //通过系统提供的newValue获取新值
            //print(newValue)
            
            //也可以自定义newValue的名字
            print(newName)
            
            print(name)
        }
        
        //监听属性已经发生改变
        didSet(oldName) {
            //通过系统提供的oldValue获取旧值
            //print(oldValue)
            
            //也可以自定义oldName的名字
            print(oldName)
            
            print(name)
        }
        
    }
    
    
    
}


let p = Person()
p.name = "why"
p.name = "lnj"
		