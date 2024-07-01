//
//  CoinTableViewCell.swift
//  UIKitTutorial
//
//  Created by Mia on 26/6/2024.
//

import UIKit

class CoinTableViewCell: UITableViewCell {
    
    private let coinRankLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .systemGray3
        return label
    }()
    
    private let coinImageView = UIImageView()
    
    private let coinNameLabel: UILabel = {
       let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private let coinSymbolLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()

    private let coinPriceLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private let coinPercentChangeLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureUI()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        // add mock data
        coinRankLabel.text = "1"
        coinNameLabel.text = "Bitcoin"
        coinSymbolLabel.text = "BTC"
        
        coinPriceLabel.text = "$62,323.00"
        coinPercentChangeLabel.text = "-234%"
        
        coinImageView.backgroundColor = .systemGray3
    }

    func configureUI() {
        contentView.addSubview(coinRankLabel)
        coinRankLabel.translatesAutoresizingMaskIntoConstraints = false
        // center coinRankLabel Y axis and pin to the left
        coinRankLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        coinRankLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        contentView.addSubview(coinImageView)
        coinImageView.translatesAutoresizingMaskIntoConstraints = false
        coinImageView.leftAnchor.constraint(equalTo: coinRankLabel.rightAnchor, constant: 16).isActive = true
        coinImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        coinImageView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        coinImageView.widthAnchor.constraint(equalToConstant: 32).isActive = true

        // create a VStack with leading alignment and 4px spacing
        let coinNameStack = UIStackView(arrangedSubviews: [coinNameLabel, coinSymbolLabel])
        coinNameStack.spacing = 4
        coinNameStack.axis = .vertical
        coinNameStack.alignment = .leading
        
        contentView.addSubview(coinNameStack)
        coinNameStack.translatesAutoresizingMaskIntoConstraints = false
        coinNameStack.leftAnchor.constraint(equalTo: coinImageView.rightAnchor, constant: 16).isActive = true
        coinNameStack.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        let priceStack = UIStackView(arrangedSubviews: [coinPriceLabel, coinPercentChangeLabel])
        priceStack.spacing = 4
        priceStack.axis = .vertical
        priceStack.alignment = .trailing
        
        contentView.addSubview(priceStack)
        priceStack.translatesAutoresizingMaskIntoConstraints = false
        priceStack.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        priceStack.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
