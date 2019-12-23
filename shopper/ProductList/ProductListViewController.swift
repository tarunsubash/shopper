//
//  ViewController.swift
//  shopper
//
//  Created by Subash on 23/12/19.
//  Copyright © 2019 Subash. All rights reserved.
//

import UIKit
import SnapKit

class ProductListViewController: UIViewController {

    lazy var tableView: UITableView = {
       let tableView = UITableView(frame: .zero, style: .plain)
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildView()
        tableView.register(ProductListTableViewCell.self, forCellReuseIdentifier: "cell")
    }

    func buildView() {
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }

}

extension ProductListTableViewCell: UITableViewDelegate {
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

extension ProductListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ProductListTableViewCell
        cell.configure(title: "iPhone", price: "\(indexPath.row)")
        return cell
    }
    
    
}
