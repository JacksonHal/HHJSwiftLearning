//
//  AppDelegate.swift
//  35-Swift之网易新闻首页
//
//  Created by 郝好杰 on 2017/6/19.
//  Copyright © 2017年 HHJ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //设置状态栏的颜色为白色
        application.statusBarStyle = UIStatusBarStyle.lightContent
        
        return true
    }



}

