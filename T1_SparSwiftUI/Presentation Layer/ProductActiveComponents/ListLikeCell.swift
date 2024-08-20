//
//  ListLikeCell.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 15.08.2024.
//

import SwiftUI

struct ListLikeCell: View {
    let width: CGFloat = 32
    let height: CGFloat = 64
    let widthButton: CGFloat = 14
    let heightButton : CGFloat = 14
    let cornerRadius: CGFloat = 20

    
    @State private var isListSelected: Bool = false
    @State private var isHeartSelected: Bool = false
    
    var body: some View {
        VStack (alignment: .center, spacing: 0) {
            Button(action: {
                isListSelected.toggle()
            }) {
                Image("List")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: widthButton, height: heightButton)
                    .padding(9)

            }
            Button(action: {
                isHeartSelected.toggle()
            }) {
                Image(isHeartSelected ? "HeartFill" : "Heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: widthButton, height: heightButton)
                    .padding(9)
            }
        }
        .background(Color.white.opacity(0.5))
        .frame(width: width, height: height)
        .cornerRadius(cornerRadius)
        .opacity(0.9)
    }
}

#Preview {
    ListLikeCell()
}
