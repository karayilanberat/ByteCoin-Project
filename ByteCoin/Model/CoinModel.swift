//
//  CoinModel.swift
//  ByteCoin
//
//  Created by berat on 18.07.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let coinName: String
    let exchangeProperty: String
    let rate: Double
    
    var rateStr: String {
        return String(format: "%6f", rate)
    }
}
