//
//  MarketListCell.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 12.08.2024.
//

import SwiftUI

struct MarketListCell: View {
    var product: Product
    
    var body: some View {
        let width: CGFloat = 375
        let height : CGFloat = 176
        
        VStack {
            HStack (spacing: 8){
                ImageListOverlayView()
                VStack (alignment: .leading, spacing: 0){
                    HStack (spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            ProductLineRating(rating: product.rating)
                            ProductNameView(name: product.name, countryOfOrigin: product.countryOfOrigin)
                        }
                        ListLikeCell()
                            
                    }
                    VStack(alignment: .leading){
                        if product.isSoldByQuantity == true && product.isSoldByWeight == true{
                            PiecesKilogramsToggle()
                        } else {
                            Spacer()
                        }
                        KilogramsSetter()
                    }
                    .frame(minWidth: 168, idealWidth: 168,minHeight: 64, idealHeight: 64)
                }
            }
        }
        .frame(width: width, height: height)
        Divider()
    }
}

#Preview {
    MarketListCell(product: Product.sampleProduct())
}
