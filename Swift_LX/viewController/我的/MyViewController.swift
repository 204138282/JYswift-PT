//
//  MyViewController.swift
//  Swift_LX
//
//  Created by 师悦科技 on 2017/3/8.
//  Copyright © 2017年 Kbird. All rights reserved.
//

import UIKit

///-----------------------------------------
//  MARK: - - - - - - - - - - - - - - Class
///-----------------------------------------
class MyViewController: UIViewController {

    // MARK: - - 懒加载
    lazy var collectionView: UICollectionView = {
       let flowLayout = UICollectionViewFlowLayout.init()
        flowLayout.itemSize = CGSize.init(width: SCREEN_WIDTH / 2 - 60, height: SCREEN_WIDTH / 2)
        flowLayout.minimumLineSpacing = 30
        flowLayout.minimumInteritemSpacing = 20
        flowLayout.sectionInset = UIEdgeInsetsMake(10, 20, 0, 20)
        let collection = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT), collectionViewLayout: flowLayout)
        collection.showsVerticalScrollIndicator = true
        collection.backgroundColor = UIColor.white
        collection.delegate = self
        collection.dataSource = self
        return collection
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib.init(nibName: "MyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MyCollectionViewCell")
        self.view.addSubview(collectionView)
        // Do any additional setup after loading the view.
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
    
    //  MARK: - - 数据源
    let titleArray: NSArray = [["img":"venues_4", "title":"图书馆", "count":"10", "canYY":"3"],
                               ["img":"venues_2", "title":"体育馆", "count":"11", "canYY":"4"],
                               ["img":"venues_3", "title":"实验室", "count":"12", "canYY":"5"],
                               ["img":"venues_1", "title":"会议馆", "count":"13", "canYY":"6"]]
    
    //  MARK: - - 随机色
    let red_c = CGFloat(arc4random_uniform(255)) / CGFloat(255.0)
    let green_c = CGFloat(arc4random_uniform(255)) / CGFloat(255.0)
    let blue_c = CGFloat(arc4random_uniform(255)) / CGFloat(255.0)
    let alpha_c = CGFloat(arc4random_uniform(255)) / CGFloat(255.0)
}


///-----------------------------------------
//  MARK: - - - - - - - - - - - - - - extension
///-----------------------------------------
extension MyViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        let dic: NSDictionary = titleArray.object(at: indexPath.item) as! NSDictionary
        let imgString = dic.value(forKey: "img") as! String
        
//        cell.backgroundColor = UIColor.init(red: 171 / 255.0, green: 171 / 255.0, blue: 171 / 255.0, alpha: 1.0)
        cell.backgroundColor = UIColor.init(red: red_c, green: green_c, blue: blue_c, alpha: alpha_c)
        cell.headImageView.image = UIImage.init(named: imgString)
        cell.titleLabel.text = dic.value(forKey: "title") as? String
        cell.CGCount.text = "总场馆数:\(dic.value(forKey: "count") as! String)个"
        cell.canYYCount.text = "今日还可预约:\(dic.value(forKey: "canYY") as! String)个"
        return cell
    }
}
