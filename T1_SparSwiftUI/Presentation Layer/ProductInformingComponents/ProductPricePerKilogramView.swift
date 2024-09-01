//
//  ProductPricePerKilogramView.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 19.08.2024.
//

import SwiftUI

struct ProductPricePerKilogramView: View {
    
    var price: Double
    var discount: Double?
    
    let width: CGFloat = 90
    let maxWidth: CGFloat = 160
    let height : CGFloat = 36
    let widthText: CGFloat = 80
    let heightText : CGFloat = 22
    let heightKopecks : CGFloat = 20
    let heightSecondText : CGFloat = 14
    
    var discountedPrice: Double {
        if let discount = discount {
            return price - (price * (discount / 100))
        } else {
            return price
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            HStack (spacing: 1) {
                Text(formattedRubls(discountedPrice))
                    .fontWeight(.bold)
                    .font(.system(size: 18, design: .rounded))
                    .lineLimit(1)
                    .layoutPriority(1) 
                Text(formattedKopecks(discountedPrice))
                    .font(.system(size: 14, design: .rounded))
                    .fontWeight(.bold)
                    .lineLimit(1)
                RublesPerKilogramLogo()
                Spacer()
            }
            .frame(minWidth: width, maxWidth: maxWidth, maxHeight: heightText)
            if discount != nil {
                Text(formattedRubls(price))
                    .font(.caption2)
                    .frame(width: widthText, height: heightSecondText, alignment: .leading)
                    .lineLimit(1)
                    .foregroundColor(Color.secondary)
                    .strikethrough(true)
            }
        }
        .frame(minWidth: width, maxWidth: maxWidth, maxHeight: height)
    }
    
    func formattedRubls(_ price: Double) -> String {
        return String(format: "%.0f", price)
    }
    
    func formattedKopecks(_ price: Double) -> String {
        let kopecksString = String(format: "%.2f", price)
        if let decimalIndex = kopecksString.firstIndex(of: ".") {
            return String(kopecksString[kopecksString.index(after: decimalIndex)...])
        }
        return "00"
    }
}

#Preview {
    ProductPricePerKilogramView(price: 359, discount: 25)
}
