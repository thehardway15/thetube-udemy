//
//  ViewController.swift
//  TheTube
//
//  Created by Damian Wiśniewski on 13.05.2018.
//  Copyright © 2018 Damian Wiśniewski. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //show the menu title
        navigationItem.title = "Home"
        
        // collection view background
        collectionView?.backgroundColor = UIColor.white
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = UIColor.red
        
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.text = "Home"
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = titleLabel
        
        // register class for cell id
        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "Cell")
    }
    
    // Number of collection view in home
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    // cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // (width - left margin - right margin) * (ratio 16:9)
        let height = (view.frame.width - 16 - 16) * 9 / 16
        // height + bottom margin video + height footer + bottom margin footer
        return CGSize(width: view.frame.width, height: height + 16 + 44 + 8)
    }
}
