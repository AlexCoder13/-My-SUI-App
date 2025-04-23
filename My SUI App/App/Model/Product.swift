//
//  Product.swift
//  My SUI App
//
//  Created by Александр Семёнов on 16.04.2025.
//
import Foundation
import FirebaseFirestore

struct Product: Identifiable, Codable {
    @DocumentID var id: String? // Идентификатор нужен для того, чтобы ID поступал с Firebase
    var name: String
    var description: String
    var image: String
    var price: Int
    var isFavorite: Bool
    var quentityInCart: Int?
}


