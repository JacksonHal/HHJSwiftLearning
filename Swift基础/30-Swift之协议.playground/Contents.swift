//: Playground - noun: a place where people can play

import UIKit

/*
 总结：
    1> 协议的定义
    2> 如何遵守协议
    3> 协议在代理设计模式中的使用
    4> 协议中方法的可选性
        protocol前面需要加上 @objec
        方法前面加上 @objc optional
 */

//1.协议的定义
protocol SportProtocol : class {
    //默认情况下协议里的方法是必须实现的
    func playBasketball()
    func playFootball()
}

//2.定义类，并且遵守协议：直接类名后加 : 协议名
class Person : SportProtocol {
    func playBasketball() {
        print("打篮球")
    }
    func playFootball() {
        print("踢足球")
    }
}
//如果创建的类有继承父类：在父类后面加 , 协议名
class Person2 : NSObject , SportProtocol {
    func playBasketball() {
        print("打篮球")
    }
    func playFootball() {
        print("踢足球")
    }
}


//3.协议在代理设计模式中如何使用
/*
 定义协议时，协议后面最好跟上 : class
 delegate的属性最好用weak来修饰，用于防止产生循环引用
 */
class Person3  {
    //定义代理属性
    weak var delegate : SportProtocol?
    
    func play() {
        delegate?.playBasketball()
        delegate?.playFootball()
    }
    
}

//4.如何让协议中的方法是可选方法
//optional是属于OC中的特性，如果协议中有可选的方法，那么必须在protocol前面加上@objc，也需要子在optional前面加上@objc
@objc protocol TestProtocol {
   @objc optional func test()
}

class Dog : TestProtocol {
    


}
