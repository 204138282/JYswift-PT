//
//  HomeViewController.swift
//  Swift_LX
//
//  Created by 师悦科技 on 2017/3/8.
//  Copyright © 2017年 Kbird. All rights reserved.
//


import UIKit

let SCREEN_WIDTH = UIScreen.main.bounds.width
let SCREEN_HEIGHT = UIScreen.main.bounds.height

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.table)
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //  MARK - - 懒加载
    lazy var table: UITableView = {
        let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
}

extension HomeViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //断言
        /**let a = 100
        assert(a < 100, "断言a值是否==100")*/
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? HomeTableViewCell
        if cell == nil {
            cell = HomeTableViewCell.init(style: .default, reuseIdentifier: cellID)
        }
        cell?.nameLabel.text = "姓名:\(indexPath.row)"
        cell?.dateLabel.text = "日期:\(indexPath.row)"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let string = "Hello World"
        return string
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let HomeSecondVC: HomeViewControllerSecond = HomeViewControllerSecond()
        HomeSecondVC.navTitle = "传值index:\(indexPath.row)"
        HomeSecondVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(HomeSecondVC, animated: true)
    }
    
    
}
