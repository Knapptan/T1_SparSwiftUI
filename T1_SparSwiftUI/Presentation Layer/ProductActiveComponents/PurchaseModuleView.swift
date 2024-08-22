//
//  PurchaseModuleView.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 21.08.2024.
//

import SwiftUI

struct PurchaseModuleView: View {
    @State private var isInCart = false
    @State private var isKgSelected = false
    @State private var pieces = 0
    @State private var kilograms = 0.0
    
    var product: Product
    var width: CGFloat = 199
    var height: CGFloat = 70
    var cornerRadius: CGFloat = 40
    
    var body: some View {
        VStack(spacing: 0) {
            if isInCart {
                if product.isSoldByQuantity && product.isSoldByWeight {
                    PiecesKilogramsToggle(isKgSelected: $isKgSelected)
                }
                
                if isKgSelected {
                    KilogramsSetter(kilograms: $kilograms)
                } else {
                    PiecesSetter(pieces: $pieces)
                }
            } else {
                ShoppingCartButton()
            }
        }
        .padding()
    }
}

#Preview {
    PurchaseModuleView(product: Product.sampleProduct())
}
