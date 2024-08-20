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

enum ProductPromotionType {
    case priceHit
    case cardPrice
    case new
    case none
}

struct Product: Identifiable {
    let id = UUID()                     // Уникальный идентификатор для каждого продукта
    let name: String                    // Название продукта
    let imageName: String?              // Имя файла изображения (может быть отсутствующим)"ProductImage"
    let rating: Double?                 // Рейтинг (может быть отсутствующим)
    let reviews: Int?                   // Количество отзывов (может быть отсутствующим)
    let price: Double                   // Цена
    let discount: Double?               // Скидка (может быть отсутствующей)
    let countryOfOrigin: Country        // Страна производства (может быть отсутствующей)
    let isSoldByWeight: Bool            // Признак продажи по весу
    let isSoldByQuantity: Bool          // Признак продажи поштучно
    let pricePerKilogram: Double?       // Цена за килограмм (если продажа по весу)
    let weight: Double?                 // Вес продукта в килограммах (если продажа по весу)
    let quantity: Int?                  // Количество штук (если продажа поштучно)
    let promotion: ProductPromotionType // Тип акции - новый/цена по карте/удар по ценам
    
    // Статический метод для предоставления примерного продукта
    static func sampleProduct() -> Product {
        return Product(
            name: "Яблоки Грэнни Смит Зеленые, спелые, сочные", 
            imageName: "RedApples",
            rating: 4.1,
            reviews: 12,
            price: 120.0,
            discount: 10.0,
            countryOfOrigin: .russia,
            isSoldByWeight: true,
            isSoldByQuantity: false,
            pricePerKilogram: 120.0,
            weight: 1.5,
            quantity: nil,
            promotion: ProductPromotionType.new
        )
    }
}
