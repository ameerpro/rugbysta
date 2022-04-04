//
//  CategoryModel.swift
//  Rugbysta
//
//  Created by Ameer Hamza on 05/04/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
