//
//  HomeViewController.swift
//  35-Swift之网易新闻首页
//
//  Created by 郝好杰 on 2017/6/19.
//  Copyright © 2017年 HHJ. All rights reserved.
//

import UIKit



/// 视图控制器
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置UI界面
        setNavigationController()
    }

}

// MARK: - 设置UI界面
extension HomeViewController {
    fileprivate func setNavigationController() {
        
        //1.设置导航栏的背景颜色
    navigationController?.navigationBar.setBackgroundImage(UIImage(named:"reader_navigation_background"), for: UIBarMetrics.default)
        
        //2.设置标题
        navigationItem.titleView = UIImageView(image: UIImage(named: "navigation_logo"))
        
        //3.设置导航栏右侧的搜索按钮
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named:"navigation_search"), style: UIBarButtonItemStyle.plain, target: self, action: #selector(searchButtonClick))
        
        
    }
}

// MARK: - 监听点击事件
extension HomeViewController {
    @objc fileprivate func searchButtonClick() {
        print("搜索内容")
    }
}
