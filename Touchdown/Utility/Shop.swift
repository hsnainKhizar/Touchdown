//
//  Shop.swift
//  Touchdown
//
//  Created by intozoom on 8/25/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
