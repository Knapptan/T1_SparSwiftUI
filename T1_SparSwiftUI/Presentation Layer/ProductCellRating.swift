//
//  ProductCellRating.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 16.08.2024.
//

import SwiftUI

struct ProductCellRating: View {
    var product: Product
    let width: CGFloat = 41
    let height : CGFloat = 20
    let widthText: CGFloat = 15
    let heightText : CGFloat = 14
    let widthRectangle: CGFloat = 1
    let heightRectangle : CGFloat = 16
    let widthStar : CGFloat = 14
    let heightStar : CGFloat = 16
    let paddingStar : CGFloat = 2
    
    var body: some View {
        HStack (spacing: 2){
            Image("Star")
                .frame(width: widthStar, height: heightStar)
                .padding(paddingStar)
            Text("\(product.rating ?? 0, specifier: "%.1f")")
                .font(.caption)
                .lineLimit(1)
                .minimumScaleFactor(0.8)
            
        }
        .frame(width: width, height: height)
    }
}

#Preview {
    ProductCellRating(product: Product.sampleProduct())
}
