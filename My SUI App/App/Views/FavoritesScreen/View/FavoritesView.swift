//
//  FavoritesView.swift
//  My SUI App
//
//  Created by Александр Семёнов on 17.04.2025.
//

import SwiftUI
import FirebaseFirestore

struct FavoritesView: View {
    
    // MARK: - Properties
    @FirestoreQuery(
        collectionPath: "shop",
        predicates: [.isEqualTo("isFavorite", true)])
    private var favoritesItems: [Product]
    var columns = Array(repeating: GridItem(), count: 2)
    
    // MARK: - Body
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(favoritesItems) { item in
                        NavigationLink(destination: EmptyView()) {
                            ProductCardView(product: item)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .padding(.horizontal, 10)
        .background(.secondary.opacity(0.3))
        .navigationTitle("Favorites")
    }
}

#Preview {
    FavoritesView()
}
