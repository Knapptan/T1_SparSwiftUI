//
//  MarketListCell.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 12.08.2024.
//

import SwiftUI

struct MarketListCell: View {
    var viewModel: ProductViewModel
    var body: some View {
        let width: CGFloat = 375
        let height : CGFloat = 176
        
        VStack {
            HStack (spacing: 8){
                ImageListOverlayView(imageName: viewModel.product.imageName, promotion: viewModel.promotionType, showDiscountLabel: viewModel.showDiscountLabel)
                VStack (alignment: .leading, spacing: 0){
                    HStack (spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            ProductLineRating(rating: viewModel.rating)
                            ProductNameView(name: viewModel.product.name, countryOfOrigin: viewModel.countryType)
                        }
                        ListLikeCell()
                            
                    }
                    VStack(alignment: .leading){
                        PurchaseModuleView(viewModel: viewModel)}
                    .frame(minWidth: 199, maxHeight: 64)
                }
            }
        }
        .frame(width: width, height: height)
        Divider()
    }
}

#Preview {
    MarketListCell(viewModel: ProductViewModel(product: Product.sampleProduct()))
}
