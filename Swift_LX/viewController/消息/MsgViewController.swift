//
//  MsgViewController.swift
//  Swift_LX
//
//  Created by 师悦科技 on 2017/3/8.
//  Copyright © 2017年 Kbird. All rights reserved.
//

import UIKit

var identifer = "collecitonCellID"


class MsgViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionVView.register(MsgCollectionViewCell.self, forCellWithReuseIdentifier: identifer)
        self.view.addSubview(collectionVView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    lazy var collectionVView: UICollectionView =  {
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        flowLayout.itemSize = CGSize.init(width: 50, height: 50)
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 10
        let collection = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT), collectionViewLayout: flowLayout)
        collection.backgroundColor = UIColor.white
        collection.delegate = self
        collection.dataSource = self
        return collection
    }()

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MsgViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell: MsgCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: identifer, for: indexPath) as! MsgCollectionViewCell
        collectionCell.backImageView.image = #imageLiteral(resourceName: "Miku_full")   /// 设置图片
        collectionCell.backImageView.image = UIImage(named:"Miku_full.jpg")     ///设置图片
        collectionCell.titleLable.text = "item名:\(indexPath.item)"      ///设置title
        
        return collectionCell
        
    }
}
