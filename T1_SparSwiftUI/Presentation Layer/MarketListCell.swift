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
        VStack {
            HStack {
                Spacer()  // заменить на картинку
                VStack (alignment: .leading, spacing: 0){
                    HStack (spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            ProductLineRating(product: product)
                            ProductInfoView(product: product)
                        }
                        ListLikeCell()
                            
                    }
                    VStack(alignment: .leading){
                        PiecesKilogramsToggle()
                        KilogramsSetter()
                    }
                    .frame(minWidth: 168, idealWidth: 168,minHeight: 64, idealHeight: 64)
                }
                .frame(minWidth: 199, idealWidth: 199, minHeight: 144, idealHeight: 144)
            }
            .padding(8)
        }
        Divider()
    }
}

#Preview {
    MarketListCell(product: Product.sampleProduct())
}
