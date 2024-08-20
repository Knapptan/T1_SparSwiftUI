//
//  ImageListOverlayView.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 16.08.2024.
//

import SwiftUI

struct ImageListOverlayView: View {
    var imageName: String?
    var promotion: ProductPromotionType
    var showDiscountLabel: Bool
    
    let width: CGFloat = 144
    let height : CGFloat = 144
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
                }
                Spacer()
                HStack {
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
    ImageListOverlayView(imageName: nil, promotion: ProductPromotionType.new, showDiscountLabel: true)
}
