//
//  ImageNewLabel.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 16.08.2024.
//

import SwiftUI

struct ImageNewLabel: View {
    let width: CGFloat = 57
    let height: CGFloat = 16
    let cornerRadius: CGFloat = 6
    
    var body: some View {
        Text("Новинки")
            .font(.caption2)
            .foregroundColor(.white)
            .frame(width: width, height: height)
            .background(Color.seller002)
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
    ImageNewLabel()
}
