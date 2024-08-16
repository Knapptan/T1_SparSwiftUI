//
//  ImageListOverlayView.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 16.08.2024.
//

import SwiftUI

struct ImageListOverlayView: View {
    var body: some View {
        let width: CGFloat = 144
        let height : CGFloat = 144
        let maxWidthLable: CGFloat = 84
        let maxHeightLable : CGFloat = 16
        let maxWidthDiscount: CGFloat = 32
        let maxHeightDiscount : CGFloat = 20
        
        ZStack {
            Image("ProductImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
            
            VStack {
                HStack {
                    ImageDiscountLable()
                        .frame(maxWidth: maxWidthLable, maxHeight: maxHeightLable)
                    Spacer()
                }
                Spacer()
                HStack {
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
    ImageListOverlayView()
}
