//: Playground - noun: a place where people can play

import UIKit

/*
 总结：
    1.定义结构体
    2.创建结构体对应的值
    3.系统中结构体的创建
    4.给结构体扩充方法
    5.结构体扩充构造方法
 */
//1.定义结构体  模仿CGRect
struct Location {
    //属性和方法
    //属性
    var x : Double
    var y : Double
    var width : Double
    var height : Double
    
    //方法   
    //最普通的函数：该函数是没有用到成员属性
    func test() {
        print("结构体中的test函数")
    }
    
    //改变成员属性 
    //注意：如果在函数中修改了成员属性，那么该函数前必须加上mutating
    mutating func moveH(distance : Double) {
        self.x += distance
    }
    
    //给机构体扩充构造函数
    //1> 默认情况下，系统会为每一个结构体提供一个构造函数，并且该构造函数，要求给每一个成员属性进行赋值
    //2> 构造函数都是以init开头，并且构造函数不需要返回值
    //3> 在构造函数结束时，必须保证 所有的成员属性 有被初始化
    init(x : Double , y : Double , width : Double , height : Double ) {
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }
    
    //自定义构造方法   必须保证 所有的成员属性 有被初始化
    init(_ xyStr : String) {
        let array = xyStr.components(separatedBy: ",")
        let item1 = array[0]
        let item2 = array[1]
        let item3 = array[2]
        let item4 = array[3]
        
        /*这样做非常的麻烦
        if let x = Double(item1) {
            self.x = x
        }else {
            self.x = 0
        }
        if let y = Double(item2) {
            self.y = y
        }else {
            self.y = 0
        }
        if let width = Double(item3) {
            self.width = width
        }else {
            self.width = 0
        }
        if let height = Double(item4) {
            self.height = height
        }else {
            self.height = 0
        }
        */
        
        //使用下边这种方法初始化
        // ?? 判断前面的可选类型时候有值
        // 有值，则解包；没有值，则使用后面的值
        //相当于上边的if-else语句
        self.x = Double(item1) ?? 0
        self.y = Double(item2) ?? 0
        self.width = Double(item3) ?? 0
        self.height = Double(item4) ?? 0
    }
    
}


//2.创建结构体对应的值
var loc = Location(x: 20, y: 20, width: 20, height: 40)
print(loc)


//3.系统中结构体的创建方法
var frame = CGRect(x: 30, y: 40, width: 20, height: 50)


//4.给结构体扩充方法：用loc调用结构体中的方法
loc.test()
loc.moveH(distance: 30)
print(loc)


//5.给结构体扩充构造函数
var loc2 = Location(x: 10, y: 39, width: 28, height: 299)
print(loc2)


//用自定义的构造方法创建
var loc3 = Location("23,38,20,100")
print(loc3)

