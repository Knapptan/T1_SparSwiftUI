//
//  ProductSrtuct.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 12.08.2024.
//

import Foundation

enum Country: String, CaseIterable, Decodable {
        case usa
        case canada
        case germany
        case france
        case italy
        case japan
        case china
        case brazil
        case russia
        case unknown
        
        // Свойство для получения форматированного значения
        var displayName: String {
            switch self {
            case .usa: return "США 🇺🇸"
            case .canada: return "Канада 🇨🇦"
            case .germany: return "Германия 🇩🇪"
            case .france: return "Франция 🇫🇷"
            case .italy: return "Италия 🇮🇹"
            case .japan: return "Япония 🇯🇵"
            case .china: return "Китай 🇨🇳"
            case .brazil: return "Бразилия 🇧🇷"
            case .russia: return "Россия 🇷🇺"
            case .unknown: return ""
            }
        }
    }

enum ProductPromotionType:  String, CaseIterable, Decodable {
    case priceHit
    case cardPrice
    case new
    case none
}

struct Product: Codable {
    let name: String                    // Название продукта
    let imageName: String?              // Имя файла изображения (может быть отсутствующим)"ProductImage"
    let rating: Double?                 // Рейтинг (может быть отсутствующим)
    let reviews: Int?                   // Количество отзывов (может быть отсутствующим)
    let price: Double                   // Цена
    let discount: Double?               // Скидка (может быть отсутствующей)
    let countryOfOrigin: String         // Страна производства (может быть отсутствующей)
    let isSoldByWeight: Bool            // Признак продажи по весу
    let isSoldByQuantity: Bool          // Признак продажи поштучно
    let pricePerKilogram: Double?       // Цена за килограмм (если продажа по весу)
    let weight: Double?                 // Вес продукта в килограммах (если продажа по весу)
    let quantity: Int?                  // Количество штук (если продажа поштучно)
    let promotion: String               // Тип акции - новый/цена по карте/удар по ценам
    
    // Статический метод для предоставления примерного продукта
    static func sampleProduct() -> Product {
        return Product(
            name: "Яблоки Грэнни Смит Зеленые, спелые, сочные",
            imageName: "RedApples",
            rating: 4.1,
            reviews: 12,
            price: 120.0,
            discount: 10.0,
            countryOfOrigin: "russia",
            isSoldByWeight: true,
            isSoldByQuantity: true,
            pricePerKilogram: 120.0,
            weight: 1.5,
            quantity: 5,
            promotion: "new"
        )
    }
    
}
