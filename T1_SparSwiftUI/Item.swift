//
//  Item.swift
//  T1_SparSwiftUI
//
//  Created by Knapptan on 16.08.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}