//
//  Extensions.swift
//  TheTube
//
//  Created by Damian Wiśniewski on 19.05.2018.
//  Copyright © 2018 Damian Wiśniewski. All rights reserved.
//

import UIKit

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