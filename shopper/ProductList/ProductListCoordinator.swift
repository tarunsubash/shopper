//
//  ProductListCoordinator.swift
//  shopper
//
//  Created by Subash on 23/12/19.
//  Copyright © 2019 Subash. All rights reserved.
//

import Foundation

class ProductListCoordinator: Coordinator {
    private let router: Routable
    
    init(router: Routable = Router()) {
        self.router = router
    }
    func start() {
        let productListViewController = ProductListViewController(nibName: nil, bundle: nil)
        router.push(productListViewController, animated: true)
    }
}
