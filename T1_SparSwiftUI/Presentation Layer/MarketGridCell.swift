//
//  MarketGridCell.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 12.08.2024.
//

import SwiftUI

struct MarketGridCell: View {
    var viewModel: ProductViewModel
    let width: CGFloat = 170
    let height : CGFloat = 280
    let textHeight: CGFloat = 44
    
    var body: some View {
        VStack ( spacing: 0){
            ImageGridOverlayView(imageName: viewModel.product.imageName ?? "", promotion: viewModel.promotionType, showDiscountLabel: viewModel.showDiscountLabel, rating: viewModel.rating)
            ProductNameView(name: viewModel.product.name, countryOfOrigin: viewModel.countryType)
                .frame(height: textHeight)
            PurchaseModuleView(viewModel: viewModel)
                .padding(.horizontal, 5)
                .padding(.bottom, 5)
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
    MarketGridCell(viewModel: ProductViewModel(product: Product.sampleProduct()))
}
