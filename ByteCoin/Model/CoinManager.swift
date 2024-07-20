//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManageDelegate {
    func didUpdateCoin(coin: CoinModel)
    func didFailWithError(error: Error)
}

struct CoinManager {
        
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/apikey-"
    let apiKey = "4CD79232-4C82-4DFD-925B-84EE811EA0C5"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    var delegate: CoinManageDelegate?

    func getCoinPrice(for currency: String) {
        //print(currency)
        let urlString = "\(baseURL)\(apiKey)/\(currency)/USD"
        performRequest(urlString)
    }
    
    func performRequest(_ urlString: String) {
        
        // Create a URL
        if let url = URL(string: urlString) {
            
            // Create a URLSession
            let session = URLSession(configuration: .default)
            
            // Give session a task
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    if let coin = self.parseJSON(safeData) {
                        self.delegate?.didUpdateCoin(coin: coin)
                    }
                }
            }
            // Start the task
            task.resume()
        }
    }
    
    func parseJSON(_ JSONData: Data) -> CoinModel?{
        
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(CoinData.self, from: JSONData)
            //print(decodedData)
            
            let coinName = decodedData.asset_id_base
            let exchangeProperty = decodedData.asset_id_quote
            let rate = decodedData.rate
            
            let coin = CoinModel(coinName: coinName, exchangeProperty: exchangeProperty, rate: rate)
            
            return coin

        } catch {
            print(error)
            return nil
        }
    }
    
}
