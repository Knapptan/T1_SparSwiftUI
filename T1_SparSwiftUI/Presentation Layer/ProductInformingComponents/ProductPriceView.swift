//
//  ProductPriceView.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 19.08.2024.
//

import SwiftUI

struct ProductPriceView: View {
    
    var price: Double
    var discount: Double?
    
    let width: CGFloat = 160
    let height : CGFloat = 56
    let widthText: CGFloat = 56
    let heightText : CGFloat = 22
    let heightKopecks : CGFloat = 20
    let heightSecondText : CGFloat = 14
    
    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            HStack (spacing: 1){
                Text(formattedRubls(price))
                    .fontWeight(.bold)
                    .font(.system(size: 20, design: .rounded))
                    .minimumScaleFactor(0.5)
                    .frame(height: heightText, alignment: .leading)
                    .lineLimit(1)
                Text(formattedKopecks(price))
                    .font(.system(size: 16, design: .rounded))
                    .fontWeight(.bold)
                    .frame(maxWidth: widthText, maxHeight: heightKopecks, alignment: .topLeading)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
//                    .padding(.top, 2)
                
                Spacer()
            }
            .frame(maxWidth: 85, idealHeight: 20)
            
            if discount != nil {
                Text(formattedRubls(price))
                    .font(.caption2)
                    .frame(width: widthText,height: heightSecondText, alignment: .leading)
                    .lineLimit(1)
                    .foregroundColor(Color.secondary)
                    .strikethrough(true)
            }
        }
        .frame(width: width,height: height)
    }
    
    func formattedRubls(_ price: Double) -> String {
        return String(format: "%.0f", price)
    }
    
    func formattedKopecks(_ price: Double) -> String {
        let kopecksString = String(format: "%.2f", price)
        if let decimalIndex = kopecksString.firstIndex(of: ".") {
            return String(kopecksString[kopecksString.index(after: decimalIndex)...])
        }
        return "00"  // Если не удалось извлечь копейки
    }
    
}

#Preview {
    ProductPriceView(price: 359, discount: 25)
}
