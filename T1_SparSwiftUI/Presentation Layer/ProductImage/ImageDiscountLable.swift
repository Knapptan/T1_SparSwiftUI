//
//  ImageDiscountLable.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 16.08.2024.
//

import SwiftUI

struct ImageDiscountLable: View {
    let width: CGFloat = 84
    let height: CGFloat = 16
    let cornerRadius: CGFloat = 6
    
    var body: some View {
        Text("Удар по ценам")
            .font(.caption2)
            .foregroundColor(.white)
            .frame(width: width, height: height)
            .background(Color.seller001)
            .clipShape(
                .rect(
                    topLeadingRadius: 0,
                    bottomLeadingRadius: 0,
                    bottomTrailingRadius: cornerRadius,
                    topTrailingRadius: cornerRadius
                )
            )
    }
}

#Preview {
    ImageDiscountLable()
}
