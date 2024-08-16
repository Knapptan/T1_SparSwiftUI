//
//  ProductSrtuct.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 12.08.2024.
//

import Foundation

enum Country: String, CaseIterable {
    case usa = "США 🇺🇸"
    case canada = "Канада 🇨🇦"
    case germany = "Германия 🇩🇪"
    case france = "Франция 🇫🇷"
    case italy = "Италия 🇮🇹"
    case japan = "Япония 🇯🇵"
    case china = "Китай 🇨🇳"
    case brazil = "Бразилия 🇧🇷"
    case russia = "Россия 🇷🇺"
    case unknown = ""
}

struct Product {
    let name: String                    // Название продукта
    let rating: Double?                 // Рейтинг (может быть отсутствующим)
    let reviews: Int?                   // Количество отзывов (может быть отсутствующим)
    let price: Double                   // Цена
    let discount: Double?               // Скидка (может быть отсутствующей)
    let countryOfOrigin: Country        // Страна производства (может быть отсутствующей)
    let isSoldByWeight: Bool            // Признак продажи по весу или поштучно
    let pricePerKilogram: Double?       // Цена за килограмм (если продажа по весу)
    let weight: Double?                 // Вес продукта в килограммах (если продажа по весу)
    let quantity: Int?                  // Количество штук (если продажа поштучно)
    
    // Вычисляемые свойства
    var finalPrice: Double {
        let basePrice = isSoldByWeight ? (pricePerKilogram ?? 0) * (weight ?? 1) : price
        return discount != nil ? basePrice - (basePrice * discount! / 100) : basePrice
    }
    
    var displayPrice: String {
        if isSoldByWeight {
            return "\(finalPrice) per \(weight ?? 1) kg"
        } else {
            return "\(finalPrice) for \(quantity ?? 1) pcs"
        }
    }
    
    // Статический метод для предоставления примерного продукта
    static func sampleProduct() -> Product {
        return Product(
            name: "Яблоки Грэнни Смит",
            rating: 4.5,
            reviews: 112,
            price: 120.0,
            discount: 10.0,
            countryOfOrigin: .russia,
            isSoldByWeight: true,
            pricePerKilogram: 120.0,
            weight: 1.5,
            quantity: nil
        )
    }
}
