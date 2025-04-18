//
//  ProductCardView.swift
//  My SUI App
//
//  Created by Александр Семёнов on 18.04.2025.
//

import SwiftUI

struct ProductCardView: View {
    
    // MARK: - Properties
    let product: Product
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geo in
            let size = geo.size
            
            ZStack(alignment: .bottom) {
                ZStack(alignment: .topTrailing) {
                    if let url = URL(string: product.image) {
                        CardImageView(
                            url: url,
                            width: size.width,
                            height: size.height
                        )
                        
                        Button {
                            // action
                        } label: {
                            Image(systemName: "heart.fill")
                                .padding(10)
                                .foregroundColor(product.isFavorite ? .red : .white)
                                .background(.black)
                                .clipShape(Circle())
                                .padding()
                        }
                    }
                }
                
                VStack {
                    Text(product.name)
                    
                    Text("$\(product.price)")
                }
            }
        }
        .frame(height: UIScreen.main.bounds.width * 0.7)
        .background(.background.opacity(0.5))
        .padding(10)
    }
}

#Preview {
    ProductCardView(
        product: Product(
            name: "Dual Sense",
            description: "DD",
            image: "https://i.pinimg.com/550x/69/41/26/69412658f34575e1aa5321f475da53bb.jpg",
            price: 100,
            isFavorite: false
        )
    )
}
