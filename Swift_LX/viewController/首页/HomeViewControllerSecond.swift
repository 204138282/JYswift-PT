//
//  HomeViewControllerSecond.swift
//  Swift_LX
//
//  Created by 师悦科技 on 2017/3/10.
//  Copyright © 2017年 Kbird. All rights reserved.
//

import UIKit

class HomeViewControllerSecond: UIViewController {

    var navTitle = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = navTitle
        
//        ///返回：System
//        let item = UIBarButtonItem.init(title: "返回1", style: UIBarButtonItemStyle.plain, target: self, action: #selector(backItemAction(sender:)))
//        self.navigationItem.leftBarButtonItem = item
        
        ///返回：Custom
        let backButton = UIButton.init(type: UIButtonType.custom)
        backButton.frame = CGRect.init(x: 0, y: 0, width: 50, height: 20)
        backButton.setTitleColor(UIColor.red, for: .normal)
        backButton.setTitle("返回2", for: UIControlState.normal)
        backButton.addTarget(self, action: #selector(backButtonAction(sender:)), for: UIControlEvents.touchUpInside)
        let leftBarItem = UIBarButtonItem.init(customView: backButton)
        //用于消除左边空隙，要不然按钮顶不到最前面
        let space = UIBarButtonItem.init(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        space.width = -10
        self.navigationItem.leftBarButtonItem = leftBarItem
        // Do any additional setup after loading the view.
    }
 
    //  MARK:   返回Action ---- System
    func backItemAction(sender: UIBarButtonItem)
    {
        ///（推荐使用）
        for i in 0..<(self.navigationController?.viewControllers.count)! {
            if self.navigationController?.viewControllers[i].isKind(of: UIViewController.self) == true {
                _ = self.navigationController?.popToViewController(self.navigationController?.viewControllers[i] as! HomeViewController, animated: true)
                break
            }
        }
    }
    //  MARK:   返回Action ---- Custom
    func backButtonAction(sender: UIButton)
    {
        ///此方法容易出现Crash
//        self.navigationController?.popViewController(animated: true)
        
        ///（推荐使用）
        for i in 0..<(self.navigationController?.viewControllers.count)! {
            if self.navigationController?.viewControllers[i].isKind(of: UIViewController.self) == true {
                _ = self.navigationController?.popToViewController(self.navigationController?.viewControllers[i] as! HomeViewController, animated: true)
                break
            }
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
