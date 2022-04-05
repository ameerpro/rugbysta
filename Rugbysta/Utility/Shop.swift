//
//  Shop.swift
//  Rugbysta
//
//  Created by Ameer Hamza on 05/04/2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
