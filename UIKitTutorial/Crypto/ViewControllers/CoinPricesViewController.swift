//
//  CoinPricesViewController.swift
//  UIKitTutorial
//
//  Created by Mia on 26/6/2024.
//

import UIKit

private let reuseIdentifier = "cell"

class CoinPricesViewController: UIViewController {

    private let tableView = UITableView()
    private let service = MockCoinDataService()
    
    private var coins = [Coin]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "All Coins"
        view.backgroundColor = .systemBackground
        
        
        tableView.register(CoinTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.frame = view.frame
        tableView.rowHeight = 56
        
        Task { await fetchCoins() }
    }
    
    func fetchCoins() async {
        do {
            self.coins = try await service.fetchCoins()
            tableView.reloadData()
            print("DEBUG: Coins count \(coins.count)")
        } catch {
            print("DEBUG: Failed to fetch coins with error: \(error.localizedDescription)")
        }
    }
}

extension CoinPricesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coins.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // render cell
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! CoinTableViewCell
//        cell.coin = coins[indexPath.row] // one method
        cell.configure(coins[indexPath.row])// alternative method, pass each coin
        return cell
    }
    
}

extension CoinPricesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let coin = coins[indexPath.row]
        let detailVC = CoinDetailsViewController(coin: coin)
//        detailVC.coin = coin
        show(detailVC, sender: self)
    }
}
