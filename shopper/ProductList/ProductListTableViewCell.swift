//
//  ProductListTableViewCell.swift
//  shopper
//
//  Created by Subash on 23/12/19.
//  Copyright © 2019 Subash. All rights reserved.
//

import UIKit
import SnapKit

class ProductListTableViewCell: UITableViewCell {
    lazy var productTitle: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    lazy var productPrice: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var productImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .default
        buildView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildView() {
        contentView.addSubview(productPrice)
        contentView.addSubview(productTitle)
        contentView.addSubview(productImageView)
        productImageView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(5)
            make.bottom.equalToSuperview().offset(-5)
            make.leading.equalToSuperview().offset(10)
            make.width.equalTo(40)
            make.height.equalTo(70)
        }
        
        productTitle.snp.makeConstraints { (make) in
            make.leading.equalTo(productImageView.snp.trailing).offset(15)
            make.top.equalToSuperview()
        }
        
        productPrice.snp.makeConstraints { (make) in
            make.leading.equalTo(productTitle.snp.leading)
            make.centerY.equalToSuperview().offset(5)
        }
    }
    
    func configure(title: String, price: String) {
        productTitle.text = title
        productPrice.text = price
        productImageView.image = UIImage(named: "productImage")
    }
}
