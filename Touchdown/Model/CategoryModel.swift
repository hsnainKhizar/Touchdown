//
//  CategoryModel.swift
//  Touchdown
//
//  Created by intozoom on 8/25/21.
//

import Foundation

struct Category: Codable,Identifiable {
    let id: Int
    let name: String
    let image: String
}
