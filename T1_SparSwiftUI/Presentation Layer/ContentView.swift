//
//  ContentView.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 12.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isGridView: Bool = true
    let items = (1...20).map { "Item \($0)" }
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            VStack {
                Divider()
                if isGridView {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 1) {
                            ForEach(items, id: \.self) { item in
                                MarketGridCell(title: item)
                            }
                        }
                    }
                    .padding(.horizontal)
                } else {
                    ScrollView {
                        LazyVStack {
                            ForEach(items, id: \.self) { item in
                                MarketListCell(product: Product(name: "Product Name", rating: 4.1, reviews: 19, price: 10.0, discount: 15, countryOfOrigin: .usa, isSoldByWeight: false, pricePerKilogram: nil, weight: nil, quantity: 1))
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
