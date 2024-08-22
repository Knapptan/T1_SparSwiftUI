//
//  HoppingCartButton.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 19.08.2024.
//

import SwiftUI

struct ShoppingCartButton: View {
    
    let width: CGFloat = 48
    let height: CGFloat = 36
    let widthImage: CGFloat = 13
    let heightImage: CGFloat = 13.5
    let cornerRadius: CGFloat = 40
    
    var body: some View {
        HStack {
            Button(action: {
                print("Add to shopping cart")
            }) {
                Image("ShoppingCart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: widthImage, height: heightImage)
            }
        }
        .frame(width: width, height: height)
        .background(Color.primary001)
        .cornerRadius(cornerRadius)
    }
}

#Preview {
    ShoppingCartButton()
}
