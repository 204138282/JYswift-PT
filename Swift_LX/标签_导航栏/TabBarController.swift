//
//  TabBarController.swift
//  Swift_LX
//
//  Created by 师悦科技 on 2017/3/8.
//  Copyright © 2017年 Kbird. All rights reserved.
//

import UIKit

enum TabbarHideStyle {
    //    有动画
    case tabbarHideWithAnimation
    //    无动画
    case tabbarHideWithNoAnimation
}

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBar()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    ///设置TabBar内容
    func setTabBar() -> () {
        let homeVC: HomeViewController = HomeViewController()
        let findVC: FindViewController = FindViewController()
        let msgVC: MsgViewController = MsgViewController()
        let myVC: MyViewController = MyViewController()
        
        self.setupChildVC(homeVC, tabTitle: "首页",navTitle: "(TableView)", imageName: "Home_unselected", selectImageName: "Home_selected", isAnimation: TabbarHideStyle.tabbarHideWithAnimation)
        self.setupChildVC(findVC, tabTitle: "发现", navTitle: "(CollectionView)",imageName: "Square_normal", selectImageName: "Square_selected", isAnimation: TabbarHideStyle.tabbarHideWithAnimation)
        self.setupChildVC(msgVC, tabTitle: "消息",navTitle: "(xiaoxi)", imageName: "Message_normal", selectImageName: "Message_selected", isAnimation: TabbarHideStyle.tabbarHideWithAnimation)
        self.setupChildVC(myVC, tabTitle: "我的",navTitle: "(wode)", imageName: "tab_mine_normal", selectImageName: "tab_mine_pressed", isAnimation: TabbarHideStyle.tabbarHideWithAnimation)
        
    }
    
    ///设置TabBar需要添加的VC
    func setupChildVC(_ childVC: UIViewController, tabTitle: String, navTitle: String,imageName: String, selectImageName: String, isAnimation: TabbarHideStyle) {
        childVC.title = tabTitle
        childVC.navigationItem.title = navTitle
        childVC.tabBarItem.image = UIImage.init(named: imageName)?.withRenderingMode(.alwaysOriginal)
        childVC.tabBarItem.selectedImage = UIImage.init(named: selectImageName)?.withRenderingMode(.alwaysOriginal)
        let navigationCtrl = UINavigationController.init(rootViewController: childVC)
        self.addChildViewController(navigationCtrl)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
