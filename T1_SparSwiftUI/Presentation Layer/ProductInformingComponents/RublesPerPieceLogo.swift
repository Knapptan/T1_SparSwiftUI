//
//  RublesPerPieceLogo.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 28.08.2024.
//

import SwiftUI

struct RublesPerPieceLogo: View {
    let width: CGFloat = 22
    let height : CGFloat = 20
    let rubleWidth: CGFloat = 6
    let rubleHeight : CGFloat = 8
    let killogramsWidth: CGFloat = 10
    let killogramsrubleHeight : CGFloat = 6
    
    var body: some View {
        
        ZStack {
            Image(systemName: "minus.forwardslash.plus")
                .foregroundColor(Color.black)
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
            VStack {
                HStack {
                    Text("₽")
                        .font(.system(size: 8, design: .rounded))
                        .fontWeight(.heavy)
                        .padding(.top,1)
                        .padding(.leading, 3)
                        .background(Color.white)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("шт")
                        .font(.system(size: 7, design: .rounded))
                        .fontWeight(.heavy)
                        .background(Color.white)
                        .padding(.leading, 2)
                    
                }
            }
            .frame(width: width, height: height)
            
        }
        .frame(width: width, height: height)
    }
}

#Preview {
    RublesPerPieceLogo()
}
