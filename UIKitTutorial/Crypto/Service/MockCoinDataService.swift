//
//  MockCoinDataService.swift
//  UIKitTutorial
//
//  Created by Mia on 1/7/2024.
//

import Foundation

// fetch coins
struct MockCoinDataService {
    func fetchCoins() async throws -> [Coin] {
        do {
            return try JSONDecoder().decode([Coin].self, from: MockData.mockCoinsJSON!)
        } catch {
            throw error
        }
    }
}
