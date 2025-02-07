//
//  KilogramsSetter.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 15.08.2024.
//

import SwiftUI


struct KilogramsSetter: View {
    @Binding var kilograms: Double
    var pricePerKilogram: Double 
    var onZero: () -> Void
    @State private var rubls = 0
    @State private var kopecks = 0

    let minWidth: CGFloat = 160
    let maxWidth: CGFloat = 189
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
                kilograms = max(0.0, round((kilograms - 0.1) * 10) / 10.0)
                if kilograms == 0.0 {
                    onZero()
                }
                updatePrice()
            }) {
                Image(systemName: "minus")
                    .frame(width: widthButton, height: heightButton)
                    .foregroundColor(Color.white)
                    .padding(paddingButton)
                    .fontWeight(.heavy)
            }
            Spacer()
            
            VStack(alignment: .center, spacing: -4) {
                Text("\(formatKilograms(kilograms)) кг")
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
                kilograms += 0.1
                updatePrice()
            }) {
                Image(systemName: "plus")
                    .frame(width: widthButton, height: heightButton)
                    .foregroundColor(Color.white)
                    .padding(paddingButton)
                    .fontWeight(.heavy)
            }
        }
        .frame(minWidth: minWidth, maxWidth: maxWidth)
        .frame(height: height)
        .background(Color.primary001)
        .cornerRadius(cornerRadius)
        .onAppear {
            updatePrice()
        }
    }
    
    func updatePrice() {
        let totalPrice = kilograms * pricePerKilogram
        rubls = Int(totalPrice)
        kopecks = Int((totalPrice - Double(rubls)) * 100)
    }
    
    func formatKilograms(_ kilograms: Double) -> String {
        return String(format: "%.1f", kilograms)
    }
}

#Preview {
    KilogramsSetter(kilograms: .constant(0.5), pricePerKilogram: 2200, onZero: {})
}
