//
//  CoinListView.swift
//  UIKitTutorial
//
//  Created by Mia on 1/7/2024.
//

import SwiftUI

struct CoinListView: View {
    
    @State private var coins = [Coin]()
    private let service = MockCoinDataService()
    
    var body: some View {
        List {
            ForEach(coins) { coin in
                Text(coin.name)
            }
        }.task { await fetchCoins() }
    }
}

private extension CoinListView {
    func fetchCoins() async {
        do {
            self.coins = try await service.fetchCoins()
        } catch {
            print("DEBUG: Error: \(error)")
        }
    }
}

#Preview {
    CoinListView()
}
