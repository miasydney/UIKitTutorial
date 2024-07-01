//
//  Coin.swift
//  UIKitTutorial
//
//  Created by Mia on 1/7/2024.
//

import Foundation

// MARK: - Coin
struct Coin: Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice, marketCap, marketCapRank: Int
    let totalVolume, high24H, low24H: Int
    let priceChange24H, priceChangePercentage24H: Double
    let marketCapChange24H: Int
    let marketCapChangePercentage24H: Double
    let ath: Int
    let lastUpdated: String

    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case ath
        case lastUpdated = "last_updated"
    }
}
