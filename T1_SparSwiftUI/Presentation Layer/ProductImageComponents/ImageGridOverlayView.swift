//
//  ImageGridOverlayView.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 17.08.2024.
//

import SwiftUI

struct ImageGridOverlayView: View {
    var imageName: String?
    var promotion: ProductPromotionType
    var showDiscountLabel: Bool
    var rating: Double?
    
    let width: CGFloat = 168
    let height : CGFloat = 168
    let maxWidthLable: CGFloat = 84
    let maxHeightLable : CGFloat = 16
    let maxWidthDiscount: CGFloat = 32
    let maxHeightDiscount : CGFloat = 20
    
    var body: some View {
        
        ZStack {
            if let imageName = imageName, !imageName.isEmpty {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width, height: height)
            } else {
                Image(systemName: "photo.artframe")
                    .resizable()
                    .padding(50)
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                    .foregroundColor(Color.secondary)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width, height: height)
            }
            VStack {
                HStack (alignment: .top, spacing: 0){
                    switch promotion {
                    case .priceHit:
                        ImagePriceHitLabel()
                    case .cardPrice:
                        ImageCardLabel()
                    case .new:
                        ImageNewLabel()
                    case .none:
                        EmptyView()
                    }
                    Spacer()
                    ListLikeCell()
                }
                Spacer()
                HStack (alignment: .bottom){
                    ProductCellRating(rating: rating)
                    Spacer()
                    if showDiscountLabel {
                        ImageDiscount25PercentLabel()
                            .frame(maxWidth: maxWidthDiscount, maxHeight: maxHeightDiscount)
                    }
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
    ImageGridOverlayView(imageName: nil, promotion: ProductPromotionType.new, showDiscountLabel: true, rating: nil)
}
