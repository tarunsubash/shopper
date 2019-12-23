//
//  Routable.swift
//  shopper
//
//  Created by Subash on 23/12/19.
//  Copyright © 2019 Subash. All rights reserved.
//

import UIKit

protocol Routable: AnyObject {
    var naviagationController: UINavigationController { get }
    
    func push(_ viewController: UIViewController, animated: Bool)
}
