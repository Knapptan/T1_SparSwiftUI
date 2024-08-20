//
//  ProductLineRatingView.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 16.08.2024.
//

import SwiftUI

struct ProductLineRating: View {
    var rating: Double?
    var reviews: Int?
    
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
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: widthStar, height: heightStar)
                .padding(paddingStar)
            Text("\(rating ?? 0, specifier: "%.1f")")
                .font(.caption)
            Rectangle()
                .frame(width: widthRectangle, height: heightRectangle)
                .foregroundColor(Color.secondary)
            Text("\(reviews ?? 0) отзывов")
                .font(.caption)
                .foregroundColor(Color.secondary)
            Spacer()
        }
        .frame(width: width, height: height)
    }
}

#Preview {
    ProductLineRating(rating: 3.1, reviews: 3)
}
