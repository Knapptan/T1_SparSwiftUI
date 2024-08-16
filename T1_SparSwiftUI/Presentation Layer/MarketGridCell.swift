//
//  MarketGridCell.swift
//  T1_SwiftSpar
//
//  Created by Knapptan on 12.08.2024.
//

import SwiftUI

struct MarketGridCell: View {
    var title: String
    
    var body: some View {
        VStack {
            Text(title)
            HStack {
                ProgressView()
                    .padding(40)
            }
        }
        .frame(width: 140, height: 240)
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 0)
        .onAppear {
        }
        .padding(5)
    }
}


#Preview {
    MarketGridCell(title: "Пример")
}
