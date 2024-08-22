//
//  PiecesSetter.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 20.08.2024.
//

import SwiftUI

struct PiecesSetter: View {
    @Binding var pieces: Int
    @State var rubls = 0
    @State var kopecks = 0
    
    let minWidth: CGFloat = 189
    let height: CGFloat = 36
    let widthButton: CGFloat = 14
    let heightButton: CGFloat = 14
    let paddingButton: CGFloat = 12
    let cornerRadius: CGFloat = 40
    let widthText: CGFloat = 40
    let heightText: CGFloat = 16
    let paddingText: CGFloat = 2
    
    var body: some View {
        HStack {
            Button(action: {
                if pieces >= 1 {
                    pieces -= 1
                }
            }) {
                Image(systemName: "minus")
                    .frame(width: widthButton, height: heightButton)
                    .foregroundColor(Color.white)
                    .padding(paddingButton)
                    .fontWeight(.heavy)
            }
            Spacer()
            
            VStack(alignment: .center, spacing: -4) {
                Text("\(pieces) шт")
                    .frame(width: widthText, height: heightText)
                    .font(.caption)
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .padding(paddingText)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                Text("~\(rubls),\(kopecks) ₽")
                    .frame(width: widthText, height: heightText)
                    .font(.caption2)
                    .foregroundColor(Color.white.opacity(0.8))
                    .fontWeight(.heavy)
                    .padding(paddingText)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
            .frame(width: 41, height: 32)
            .padding(2)
            
            Spacer()
            
            Button(action: {
                pieces += 1
            }) {
                Image(systemName: "plus")
                    .frame(width: widthButton, height: heightButton)
                    .foregroundColor(Color.white)
                    .padding(paddingButton)
                    .fontWeight(.heavy)
            }
        }
        .frame(minWidth: minWidth, maxWidth: 191)
        .frame(height: height)
        .background(Color.primary001)
        .cornerRadius(cornerRadius)
    }
}

//
//#Preview {
//    PiecesSetter()
//}
