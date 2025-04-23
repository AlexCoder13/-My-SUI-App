//
//  ViewModel.swift
//  My SUI App
//
//  Created by Александр Семёнов on 22.04.2025.
//

import Foundation
import FirebaseFirestore

final class ViewModel: ObservableObject {
    
    // MARK: - Properties
    private let db = Firestore.firestore().collection("shop")
    
    // MARK: - Methods
    func toggleFavorite(product: Product) {
        guard let id = product.id else { return }
        db.document(id).updateData(["isFavorite": !product.isFavorite])
        
    }
}
