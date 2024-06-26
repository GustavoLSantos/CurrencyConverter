//
//  Currency.swift
//  CurrencyConverter
//
//  Created by Gustavo Lira on 01/05/24.
//

import Foundation

struct Currency: Hashable {
    let code: String
    let symbol: String
}

class CurrencyState {
    static let currencies: [Currency] = [
        Currency(code: "USD", symbol: "$"),
        Currency(code: "EUR", symbol: "€"),
        Currency(code: "GBP", symbol: "£"),
        Currency(code: "CAD", symbol: "$"),
        Currency(code: "BRL", symbol: "R$"),
    ]
}
