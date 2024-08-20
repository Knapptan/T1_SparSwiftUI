//
//  ImagePriceHitLabel.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 16.08.2024.
//

import SwiftUI

struct ImagePriceHitLabel: View {
    let width: CGFloat = 84
    let height: CGFloat = 16
    let textWidth: CGFloat = 66
    let textHight: CGFloat = 10
    let cornerRadius: CGFloat = 6
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 4){
            Spacer()
            Text("Удар по ценам")
                .font(.system(size: 8))
                .foregroundColor(.white)
                .frame(width: textWidth, height: textHight)
                .padding()
        }
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
    ImagePriceHitLabel()
}
