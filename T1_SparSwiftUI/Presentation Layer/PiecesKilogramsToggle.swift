//
//  PiecesKilogramsToggle.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 15.08.2024.
//

import SwiftUI


struct PiecesKilogramsToggle: View {
    @State private var isKgSelected = false

    var body: some View {
        VStack {
            Toggle(isOn: $isKgSelected) {
            }
        }
        .toggleStyle(CustomStyle())
    }
}

struct CustomStyle: ToggleStyle {
    let width: CGFloat = 189
    let height: CGFloat = 28
    let widthButton: CGFloat = 92.5
    let heightButton : CGFloat = 24
    let cornerRadius: CGFloat = 8

    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            configuration.label
            
            ZStack(alignment: configuration.isOn ? .trailing : .leading) {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: width, height: height)
                    .foregroundColor(.gray.opacity(0.2))
                
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: widthButton, height: heightButton)
                    .padding(2)
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 0)
                    .onTapGesture {
                        withAnimation {
                            configuration.$isOn.wrappedValue.toggle()
                        }
                    }
                
                HStack {
                    
                    Spacer()
                    
                    Text("Шт")
                        .font(.headline)
                        .foregroundColor(configuration.isOn ? .secondary : .black)
                    
                    Spacer()
                    Spacer()
                    
                    Text("Кг")
                        .font(.headline)
                        .foregroundColor(configuration.isOn ? .black : .secondary)
                    
                    Spacer()
                }
                .frame(width: width, height: height)
            }
        }
    }
}

#Preview {
    PiecesKilogramsToggle()
}
