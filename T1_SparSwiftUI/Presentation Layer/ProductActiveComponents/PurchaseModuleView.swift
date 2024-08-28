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

    var body: some View {
        VStack(spacing: 2) {
            if isInCart {
                if product.isSoldByQuantity && product.isSoldByWeight {
                    PiecesKilogramsToggle(isKgSelected: $isKgSelected)
                }
                
                if isKgSelected {
                    KilogramsSetter(kilograms: $kilograms, onZero: {
                        resetToInitialState()
                    })
                } else {
                    PiecesSetter(pieces: $pieces, onZero: {
                        resetToInitialState()
                    })
                }
            } else {
                Spacer()
                HStack(alignment: .center) {
                    ProductPriceView(price: 2200, discount: 3)
                    Spacer()
                    ShoppingCartButton(isShoppingCart: $isInCart)
                }
                .frame(height: 50)
            }
        }
        .frame(minWidth: minWidth, maxWidth: width, minHeight: height, maxHeight: height)
        .fixedSize(horizontal: true, vertical: false)
        .background(Color.white)
    }
    
    func resetToInitialState() {
        isInCart = false
        pieces = 1
        kilograms = 0.1
    }
}

#Preview {
    PurchaseModuleView(product: Product.sampleProduct())
}
