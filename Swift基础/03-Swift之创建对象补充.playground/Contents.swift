//: Playground - noun: a place where people can play

import UIKit

//需求:创建UIView对象，并且在UIView中添加UIButton

let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
let view : UIView = UIView(frame: rect)
view.backgroundColor = UIColor.red

let button : UIButton = UIButton(frame: CGRect(x: 20, y: 30, width: 60, height: 40))
button.backgroundColor = UIColor.blue
button.setTitle("按钮", for: UIControlState.normal)
view.addSubview(button)