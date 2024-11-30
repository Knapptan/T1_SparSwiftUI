//
//  ContentView.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 12.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isGridView: Bool = true
    let products: [Product]
    let productViewModels: [ProductViewModel]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    init() {
        self.products = ProductViewModel.loadProducts() // Загружаем продукты
        self.productViewModels = self.products.map { ProductViewModel(product: $0) } // Создаем вью-модели
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                if isGridView {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 8) {
                            // Используем productViewModels вместо products
                            ForEach(productViewModels, id: \.id) { viewModel in
                                MarketGridCell(viewModel: viewModel) // Передаем вью-модель
                            }
                        }
                    }
                    .padding(.horizontal)
                } else {
                    ScrollView {
                        LazyVStack {
                            // Используем productViewModels вместо products
                            ForEach(productViewModels, id: \.id) { viewModel in
                                MarketListCell(viewModel: viewModel) // Передаем вью-модель
                            }
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button {
                        isGridView.toggle()
                    } label: {
                        Image(systemName: isGridView ? "square.grid.2x2" : "rectangle.grid.1x2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .imageScale(.large)
                            .foregroundColor(.green)
                            .fontWeight(.heavy)
                            .padding(.maximum(14, 14))
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10.0)
                    }
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
