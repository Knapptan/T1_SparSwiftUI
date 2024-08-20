//
//  ImageCardLabel.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 16.08.2024.
//

import SwiftUI

struct ImageCardLabel: View {
    let width: CGFloat = 81
    let height: CGFloat = 16
    let cornerRadius: CGFloat = 6
    
    var body: some View {
        Text("Цена по карте")
            .font(.caption2)
            .foregroundColor(.white)
            .frame(width: width, height: height)
            .background(Color.seller003)
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
    ImageCardLabel()
}
