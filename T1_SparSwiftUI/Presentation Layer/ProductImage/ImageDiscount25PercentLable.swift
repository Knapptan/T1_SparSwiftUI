//
//  ImageDiscountPercentLable.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 16.08.2024.
//

import SwiftUI

struct ImageDiscount25PercentLable: View {
    let width: CGFloat = 32
    let height: CGFloat = 20
    let cornerRadius: CGFloat = 6
    
    var body: some View {
        Text("25%")
            .font(.custom("HelveticaNeue-Bold", size: 28))
            .foregroundColor(.additional004)
            .frame(width: width, height: height)
            .minimumScaleFactor(0.4)
            .lineLimit(1)
    }
}

#Preview {
    ImageDiscount25PercentLable()
}
