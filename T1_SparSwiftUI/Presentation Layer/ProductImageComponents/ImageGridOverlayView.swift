//
//  ImageGridOverlayView.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 17.08.2024.
//

import SwiftUI

struct ImageGridOverlayView: View {
    var product: Product
    
    var body: some View {
        let width: CGFloat = 168
        let height : CGFloat = 168
        let maxWidthLable: CGFloat = 84
        let maxHeightLable : CGFloat = 16
        let maxWidthDiscount: CGFloat = 32
        let maxHeightDiscount : CGFloat = 20
        
        ZStack {
            Image(product.imageName ?? "AppIcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
            
            VStack {
                HStack (alignment: .top){
                    ImageDiscountLable()
                        .frame(maxWidth: maxWidthLable, maxHeight: maxHeightLable)
                    Spacer()
                    ListLikeCell()
                }
                Spacer()
                HStack (alignment: .bottom){
                    ProductCellRating(rating: product.rating)
                    Spacer()
                    ImageDiscount25PercentLable()
                        .frame(maxWidth: maxWidthDiscount, maxHeight: maxHeightDiscount)
                }
            }
            .frame(width: width, height: height)
            
        }
        .frame(width: width, height: height)
        .cornerRadius(6)
        .shadow(radius: 10)
    }
}
#Preview {
    ImageGridOverlayView(product: Product.sampleProduct())
}
