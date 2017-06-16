//: Playground - noun: a place where people can play

import UIKit

/*if和guard的使用区别*/

let age = 22
let haveMoney = true   //是否带了钱
let haveID = true       //是否带了身份证



/*if 里的判断语句很多时，读取性很差
func online(age : Int) {
    if age >= 18 {
        if 带了身份证 {
            if 带钱了 {
                print("可以上网")
            }else {
                print("回家拿钱")
            }
        }else {
            print("回家带身份证")
        }
        
    }else {
        print("赶快回家")
    }
}
*/

//guard的使用：当guard的语句为真时，跳过else语句执行{}后的语句，当guard后的语句为false时，执行else{}里的语句，并return，不再往下执行。
func online(age : Int) {
    guard age >= 18 else {
        print("回家去吧")
        return
    }
    
    guard haveID else {
        print("回家带身份证")
        return
    }
    
    guard haveMoney else {
        print("回家带钱")
        return
    }
    print("可以上网");
}

online(age: age)