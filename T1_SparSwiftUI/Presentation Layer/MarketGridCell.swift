//
//  MarketGridCell.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 12.08.2024.
//

import SwiftUI

struct MarketGridCell: View {
    var product: Product // заменить на вью модель
    let width: CGFloat = 168
    let height : CGFloat = 280
    let textHeight: CGFloat = 44
    
    var body: some View {
        VStack (spacing: 2){
            Spacer()
            ImageGridOverlayView(imageName: product.imageName, promotion: ProductPromotionType.new, showDiscountLabel: true)
            ProductNameView(name: product.name, countryOfOrigin: product.countryOfOrigin)
                .frame(height: textHeight)
            PiecesKilogramsToggle()
                .frame(width: width)
            KilogramsSetter()
                .frame(width: width)
            Spacer()
        }
        .background(Color.white)
        .frame(width: width, height: height)
        .clipShape(
            .rect(
                topLeadingRadius: 16,
                bottomLeadingRadius: 16,
                bottomTrailingRadius: 20,
                topTrailingRadius: 20
            )
        )
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 0)
    }
}


#Preview {
    MarketGridCell(product: Product.sampleProduct())
}
