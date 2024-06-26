//
//  CoinTableViewCell.swift
//  UIKitTutorial
//
//  Created by Mia on 26/6/2024.
//

import UIKit

class CoinTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
