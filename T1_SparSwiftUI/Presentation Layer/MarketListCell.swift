//
//  MarketListCell.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 12.08.2024.
//

import SwiftUI

struct MarketListCell: View {
    var product: Product // заменить на вью модель 
    
    var body: some View {
        let width: CGFloat = 375
        let height : CGFloat = 176
        
        VStack {
            HStack (spacing: 8){
                ImageListOverlayView(imageName: product.imageName, promotion: ProductPromotionType.cardPrice, showDiscountLabel: true)
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
//                            PiecesKilogramsToggle(isKgSelected: <#Binding<Bool>#>)
                        } else {
                            Spacer()
                        }
//                        KilogramsSetter(kilograms: <#Binding<Double>#>)
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
