//
//  PurchaseModuleView.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 21.08.2024.
//

import SwiftUI

struct PurchaseModuleView: View {
    @State private var isInCart = false
    @State private var isKgSelected = true
    @State private var pieces = 1
    @State private var kilograms = 0.1
    
    let width: CGFloat = 199
    let minWidth: CGFloat = 158
    let height: CGFloat = 70
    let cornerRadius: CGFloat = 40
    
    var product: Product
    
    // Переделать логику поялвения вью на этом вью
    
    var body: some View {
        VStack(spacing: 2) {
            if isInCart {
                if product.isSoldByQuantity && product.isSoldByWeight {
                    PiecesKilogramsToggle(isKgSelected: $isKgSelected)
                }
                
                if isKgSelected {
                    if kilograms > 0 {
                        KilogramsSetter(kilograms: $kilograms, onZero: {
                            resetToInitialState()
                        })
                    } else {
                        ProductPriceView(price: 2200, discount: 3)
                    }
                } else {
                    if pieces > 0 {
                        PiecesSetter(pieces: $pieces, onZero: {
                            resetToInitialState()
                        })
                    } else {
                        ProductPriceView(price: 2200, discount: 3)
                    }
                }
            } else {
                HStack(alignment: .center) {
                    ProductPriceView(price: 2200, discount: 3)
                    ShoppingCartButton(isShoppingCart: $isInCart)
                }
            }
        }
        .frame(minWidth: minWidth, maxWidth: width, minHeight: height, maxHeight: height)
        .background(Color.secondary)
    }
    
    func resetToInitialState() {
        isInCart = false
        pieces = 0
        kilograms = 0.0
    }
}

#Preview {
    PurchaseModuleView(product: Product.sampleProduct())
}
