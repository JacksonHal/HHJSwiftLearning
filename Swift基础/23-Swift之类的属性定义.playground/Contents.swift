//: Playground - noun: a place where people can play

import UIKit

//创建类
class Student {
    //类的属性
    //1.存储属性：用于存储实例的常量&变量
    var name : String = ""
    var age : Int = 18
    var mathScore : Double = 0
    var englishScore : Double = 0
    
    //2.计算属性：通过某种方式计算得来结果的属性，就是计算属性
    var averageScore : Double {
        /*相当于实现了get方法
         get {
            return (mathScore + englishScore)/2
         }
         */
        return (mathScore + englishScore)/2
        
    }
    
    
    //3.类属性(由修饰的属性)：和整个类相关，并且是通过类名来访问
    static var courseCount : Int = 0
}


//创建类的对象
let stu  = Student()

stu.name = "why"
stu.age = 18
stu.englishScore = 80
stu.mathScore = 88

//需求：获取一个学生的平均值
print(stu.averageScore)

//给类属性赋值
Student.courseCount = 2
print(Student.courseCount)

