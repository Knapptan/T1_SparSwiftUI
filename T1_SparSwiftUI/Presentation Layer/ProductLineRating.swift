//
//  ProductLineRatingView.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 16.08.2024.
//

import SwiftUI

struct ProductLineRating: View {
    var product: Product
    let width: CGFloat = 151
    let height : CGFloat = 20
    let widthText: CGFloat = 107
    let heightText : CGFloat = 28
    let widthRectangle: CGFloat = 1
    let heightRectangle : CGFloat = 16
    let widthStar : CGFloat = 14
    let heightStar : CGFloat = 16
    let paddingStar : CGFloat = 2
    
    var body: some View {
        HStack {
            Image("Star")
                .frame(width: widthStar, height: heightStar)
                .padding(paddingStar)
            Text("\(product.rating ?? 0, specifier: "%.1f")")
                .font(.caption)
            Rectangle()
                .frame(width: widthRectangle, height: heightRectangle)
                .foregroundColor(Color.secondary)
            Text("\(product.reviews ?? 0) отзывов")
                .font(.caption)
                .foregroundColor(Color.secondary)
            Spacer()
        }
        .frame(width: width, height: height)
    }
}

#Preview {
    ProductLineRating(product: Product.sampleProduct())
}
