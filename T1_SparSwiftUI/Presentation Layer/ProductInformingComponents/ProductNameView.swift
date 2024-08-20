//
//  ProductNameView.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 16.08.2024.
//

import SwiftUI

struct ProductNameView: View {
    var name: String
    var countryOfOrigin: Country
    
    let width: CGFloat = 160
    let height : CGFloat = 56
    let widthText: CGFloat = 159
    let heightText : CGFloat = 28
    let heightSecondText : CGFloat = 14
    
    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            Text(name)
                .font(.caption)
                .frame(width: widthText,height: heightText, alignment: .leading)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            Text(countryOfOrigin.rawValue)
                .font(.caption2)
                .frame(width: widthText,height: heightSecondText, alignment: .leading)
                .lineLimit(1)
                .foregroundColor(Color.secondary)
        }
        .frame(width: width,height: height)
    }
}

#Preview {
    ProductNameView(name: "Название продукта", countryOfOrigin: Country.france)
}
