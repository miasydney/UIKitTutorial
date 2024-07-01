//
//  MockData.swift
//  UIKitTutorial
//
//  Created by Mia on 1/7/2024.
//

import Foundation

struct MockData {
    static let mockCoinsJSON =
    """
    [
      {
        "id": "bitcoin",
        "symbol": "btc",
        "name": "Bitcoin",
        "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
        "current_price": 70187,
        "market_cap": 1381651251183,
        "market_cap_rank": 1,
        "fully_diluted_valuation": 1474623675796,
        "total_volume": 20154184933,
        "high_24h": 70215,
        "low_24h": 68060,
        "price_change_24h": 2126.88,
        "price_change_percentage_24h": 3.12502,
        "market_cap_change_24h": 44287678051,
        "market_cap_change_percentage_24h": 3.31157,
        "circulating_supply": 19675987,
        "total_supply": 21000000,
        "max_supply": 21000000,
        "ath": 73738,
        "ath_change_percentage": -4.77063,
        "ath_date": "2024-03-14T07:10:36.635Z",
        "atl": 67.81,
        "atl_change_percentage": 103455.83335,
        "atl_date": "2013-07-06T00:00:00.000Z",
        "roi": null,
        "last_updated": "2024-04-07T16:49:31.736Z"
      },
      {
        "id": "ethereum",
        "symbol": "eth",
        "name": "Ethereum",
        "image": "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880",
        "current_price": 4533.12,
        "market_cap": 531947824440,
        "market_cap_rank": 2,
        "fully_diluted_valuation": null,
        "total_volume": 11332438454,
        "high_24h": 4576.98,
        "low_24h": 4378.21,
        "price_change_24h": 121.34,
        "price_change_percentage_24h": 2.753,
        "market_cap_change_24h": 14010662067,
        "market_cap_change_percentage_24h": 2.708,
        "circulating_supply": 117202054,
        "total_supply": null,
        "max_supply": null,
        "ath": 4838.84,
        "ath_change_percentage": -6.213,
        "ath_date": "2024-03-31T00:02:40.653Z",
        "atl": 0.432979,
        "atl_change_percentage": 1048067.76496,
        "atl_date": "2015-10-20T00:00:00.000Z",
        "roi": {
          "times": 92.4965279906677,
          "currency": "btc",
          "percentage": 9249.65279906677
        },
        "last_updated": "2024-04-07T16:50:30.736Z"
      }
    ]
    """.data(using: .utf8)

}
