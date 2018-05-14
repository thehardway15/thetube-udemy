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
        return CGSize(width: view.frame.width, height: 200)
    }

}

class VideoCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.blue
        return imageView
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    
    func setupView(){
        addSubview(thumbnailImageView)
        addSubview(separatorView)
        
        // Layout for subview
        addConstrainsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)
        addConstrainsWithFormat(format: "V:|-16-[v0]-16-[v1(1)]|", views: thumbnailImageView, separatorView)
        addConstrainsWithFormat(format: "H:|[v0]|", views: separatorView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UIView {
    func addConstrainsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String:UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
