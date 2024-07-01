//
//  CoinDetailsViewController.swift
//  UIKitTutorial
//
//  Created by Mia on 1/7/2024.
//

import UIKit

class CoinDetailsViewController: UIViewController {

    private let coin: Coin
    
    init(coin: Coin) {
        self.coin = coin
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        print("DEBUG: Coin is \(coin.name) in detail VC")
        
    }
    
}
