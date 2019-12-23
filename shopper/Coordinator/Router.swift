//
//  Router.swift
//  shopper
//
//  Created by Subash on 23/12/19.
//  Copyright © 2019 Subash. All rights reserved.
//

import UIKit

class Router: Routable {
    var naviagationController: UINavigationController
    
    init(navigationController: UINavigationController = UINavigationController()) {
        self.naviagationController = navigationController
    }
    
    func push(_ viewController: UIViewController, animated: Bool) {
        naviagationController.pushViewController(viewController, animated: animated)
    }
}
