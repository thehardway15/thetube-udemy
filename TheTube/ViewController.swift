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
        
        // register class for cell id
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    }
    
    // Number of collection view in home
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    // cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = UIColor.red
        return cell
    }

}

