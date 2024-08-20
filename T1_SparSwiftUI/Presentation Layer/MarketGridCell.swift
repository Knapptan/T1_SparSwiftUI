//
//  MarketGridCell.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 12.08.2024.
//

import SwiftUI

struct MarketGridCell: View {
    var product: Product // заменить на вью модель
    
    var body: some View {
        let width: CGFloat = 168
        let height : CGFloat = 278
        
        VStack (alignment: .center ,spacing: 4){
            ImageGridOverlayView(imageName: product.imageName, promotion: ProductPromotionType.cardPrice, showDiscountLabel: true)
                .padding(.top)
            ProductNameView(name: product.name, countryOfOrigin: product.countryOfOrigin)
            // Нужно проверить размеры и выставить границы
            PiecesKilogramsToggle()
            KilogramsSetter()
                .frame(width: 160, height: 36 )
                .padding(.vertical, 2) // на глаз - переделать
        }
        .frame(width: width, height: height)
        .padding()
        .background(Color.white)
        .clipShape(
            .rect(
                topLeadingRadius: 16,
                bottomLeadingRadius: 16,
                bottomTrailingRadius: 20,
                topTrailingRadius: 20
            )
        )
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 0)
        .onAppear {
        }
        .padding(5)
    }
}


#Preview {
    MarketGridCell(product: Product.sampleProduct())
}
