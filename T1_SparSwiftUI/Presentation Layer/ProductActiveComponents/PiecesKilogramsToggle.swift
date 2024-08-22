//
//  PiecesKilogramsToggle.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 15.08.2024.
//

import SwiftUI


struct PiecesKilogramsToggle: View {
    @Binding var isKgSelected: Bool
    
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
    let minWidth: CGFloat = 158
    let height: CGFloat = 28
    let widthButton: CGFloat = 92.5
    let minWidthButton: CGFloat = 77
    let heightButton : CGFloat = 24
    let cornerRadius: CGFloat = 8
    
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            configuration.label
            
            ZStack(alignment: configuration.isOn ? .trailing : .leading) {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(minWidth: minWidth, maxWidth: width, maxHeight: height)
                    .foregroundColor(.gray.opacity(0.2))
                
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(minWidth: minWidthButton, maxWidth: widthButton, maxHeight: heightButton)
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
                .frame(minWidth: minWidth, maxWidth: width, minHeight: height)
            }
        }
    }
}
//
//#Preview {
//    PiecesKilogramsToggle(isKgSelected: true)
//}
