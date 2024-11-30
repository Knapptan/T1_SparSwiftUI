//
//  PurchaseModuleView.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 21.08.2024.
//

import SwiftUI

struct PurchaseModuleView: View {
    @ObservedObject var viewModel: ProductViewModel
    
    @State private var isInCart = false
    @State private var isKgSelected = true
    @State private var pieces = 1
    @State private var kilograms = 0.1
    
    let minWidth: CGFloat = 158
    let maxWidth: CGFloat = 199
    let height: CGFloat = 70
    let cornerRadius: CGFloat = 40
    
    var body: some View {
        VStack(spacing: 0) {
            if viewModel.product.isSoldByQuantity && viewModel.product.isSoldByWeight {
                PiecesKilogramsToggle(isKgSelected: $isKgSelected)
                    .frame(minWidth: minWidth, maxWidth: maxWidth)
                    .frame(height: height / 2)
                    .layoutPriority(1)
            }
            if isInCart {
                if isKgSelected {
                    KilogramsSetter(kilograms: $kilograms, pricePerKilogram: viewModel.product.pricePerKilogram ?? 0,onZero: {
                        resetToInitialState()
                    })
                    .frame(minWidth: minWidth, maxWidth: maxWidth)
                    .frame(height: height / 2)
                } else {
                    PiecesSetter(pieces: $pieces, onZero: {
                        resetToInitialState()
                    })
                    .frame(minWidth: minWidth, maxWidth: maxWidth)
                    .frame(height: height / 2)
                }
            } else {
                HStack(spacing: 0) {
                    if isKgSelected {
                        ProductPricePerKilogramView(price: viewModel.product.pricePerKilogram ?? 0, discount: viewModel.product.discount ?? 0)
                    } else {
                        ProductPricePerPieceView(price: viewModel.product.price, discount: viewModel.product.discount ?? 0)
                    }
                    
                    ShoppingCartButton(isShoppingCart: $isInCart)
                }
                .frame(minWidth: minWidth, maxWidth: maxWidth)
                .frame(height: height / 2)
            }
        }
        .frame(minWidth: minWidth, maxWidth: maxWidth)
        .frame(height: height)
        .background(Color.white)
    }
    
    func resetToInitialState() {
        isInCart = false
        pieces = 1
        kilograms = 0.1
    }
}
