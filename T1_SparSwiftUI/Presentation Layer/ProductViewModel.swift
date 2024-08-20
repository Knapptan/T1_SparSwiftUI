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
    @Published var showNewLabel: Bool = true // переделать к вычисляемому

    var id: UUID {
        product.id
    }
    
    init(product: Product) {
        self.product = product
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

    // Форматированное название страны
    var countryName: String {
        product.countryOfOrigin.rawValue
    }
    
}
