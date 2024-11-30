//
//  ProductViewModel.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 19.08.2024.
//

import SwiftUI
import Combine

class ProductViewModel: ObservableObject, Identifiable {
    @Published var product: Product
    
    init(product: Product) {
        self.product = product
    }
    
    // Метод для загрузки продуктов из JSON-файла
    static func loadProducts() -> [Product] {
        return Bundle.main.decode([Product].self, from: "example.json")
    }
    
    // Вычисляемое свойство для окончательной цены с учетом скидки
    var finalPrice: Double {
        let basePrice = product.isSoldByWeight ? (product.pricePerKilogram ?? 0) * (product.weight ?? 1) : product.price
        return product.discount != nil ? basePrice - (basePrice * product.discount! / 100) : basePrice
    }
    
    // Форматированная строка для отображения цены
    var displayPrice: String {
        String(format: "%.2f ₽", finalPrice)
    }

    func convertToCountry(from string: String) -> Country {
        Country(rawValue: string) ?? .unknown
    }
    
    // Вычисляемое свойство для страны
    var countryType: Country {
        return convertToCountry(from: product.countryOfOrigin)
    }
    
    func convertToPromotionType(from string: String) -> ProductPromotionType {
        return ProductPromotionType(rawValue: string) ?? .none
    }
    
    // Вычисляемое свойство для возвращения типа акции
    var promotionType: ProductPromotionType {
        convertToPromotionType(from: product.promotion)
    }
    
    var rating: Double? {return product.rating}
    
    var showDiscountLabel: Bool {
        (product.discount ?? 0.0) >= 25.0
    }
}
