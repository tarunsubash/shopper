//
//  UIView+Extensions.swift
//  shopper
//
//  Created by Subash on 23/12/19.
//  Copyright © 2019 Subash. All rights reserved.
//

import UIKit

extension UIView {
    func addSubViews(_ subViews: [UIView]) {
        for view in subViews {
            self.addSubview(view)
        }
    }
}

