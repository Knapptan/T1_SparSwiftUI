//
//  ProductListViewModel.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 19.08.2024.
//

import SwiftUI
import Combine

class ProductListViewModel: ObservableObject {
    @Published var products: [ProductViewModel] = []
    
    init() {
        self.products = (1...20).map { _ in
            ProductViewModel(product: Product.sampleProduct())
        }
    }
    
    // Функция для обновления продуктов, загрузки с сервера и т.д.
    func fetchProducts() {
    }
}
