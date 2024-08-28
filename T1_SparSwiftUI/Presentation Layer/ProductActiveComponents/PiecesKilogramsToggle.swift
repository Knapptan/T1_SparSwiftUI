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
    
    let minWidth: CGFloat = 160
    let maxWidth: CGFloat = 191
    let height: CGFloat = 28
    let cornerRadius: CGFloat = 8
    let padding: CGFloat = 4
    
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            configuration.label
            
            ZStack(alignment: configuration.isOn ? .trailing : .leading) {
                
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(minWidth: minWidth, maxWidth: maxWidth, maxHeight: height)
                    .foregroundColor(.gray.opacity(0.2))
                
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(minWidth: (minWidth - padding * 2) / 2, maxWidth: (maxWidth - padding * 2) / 2, maxHeight: height - padding)
                    .foregroundColor(.white)
                    .padding(padding)
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
                .frame(minWidth: minWidth, maxWidth: maxWidth, minHeight: height)
            }
        }
    }
}

#Preview {
    PiecesKilogramsToggle(isKgSelected: .constant(true))
}
