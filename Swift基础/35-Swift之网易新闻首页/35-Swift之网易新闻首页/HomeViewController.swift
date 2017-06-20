//
//  HomeViewController.swift
//  35-Swift之网易新闻首页
//
//  Created by 郝好杰 on 2017/6/19.
//  Copyright © 2017年 HHJ. All rights reserved.
//

import UIKit

private let cellID = "NewsTableViewCell"

/// 视图控制器
class HomeViewController: UIViewController {

    
    // MARK: - 懒加载
    fileprivate lazy var modelArray : [NewsModel] = [NewsModel]()
    fileprivate lazy var tableView : UITableView = {[unowned self] in
        let tableView = UITableView()
        
        tableView.frame = self.view.bounds
        //设置代理
        tableView.dataSource = self
        tableView.rowHeight = 90
        
        return tableView
    }()
    
    // MARK: - 系统方法
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 1.设置UI界面
        setNavigationController()
        
        // 2.创建tableView
        view.addSubview(tableView)
        
        // 3.注册tableViewCell
        tableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
        
        // 3.请求数据
        loadData()
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
    
    //导航栏搜索按钮的点击事件
    @objc fileprivate func searchButtonClick() {
        print("搜索内容")
    }
}

// MARK: - 网络请求数据
extension HomeViewController {
    fileprivate func loadData() {
        HttpRequestTool.requestData("http://c.m.163.com/nc/article/list/T1348649079062/0-20.html", type: .get, parameters: nil) { (result : Any) in
            //1.将Any类型转换成字典类型
            guard let resultDict = result as? [String : Any] else { return }
            
            //2.根据T1348649079062字段获取数组
            guard let resultArray = resultDict["T1348649079062"] as? [[String : Any]] else { return}
            
            //3.遍历数组,将数组中的字典获取到并转化为model，并将model存储在数组中
            for dict in resultArray {
                self.modelArray.append(NewsModel(dict: dict))
            }
            
            //4.刷新数据
            self.tableView.reloadData()
        }
    }
}


// MARK: - UITableViewDataSource
extension HomeViewController:UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! NewsTableViewCell
        cell.newModel = modelArray[indexPath.row]
        return cell
        
    }
    
}
