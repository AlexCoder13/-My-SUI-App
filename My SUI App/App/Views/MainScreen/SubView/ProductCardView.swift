//
//  ProductCardView.swift
//  My SUI App
//
//  Created by Александр Семёнов on 18.04.2025.
//

import SwiftUI

struct ProductCardView: View {
    
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
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
                            vm.toggleFavorite(product: product)
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
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .titleFont()
                        .lineLimit(1)
                    
                    Text("$\(product.price)")
                        .subTitle()
                }
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background.opacity(0.5))
                .cornerRadius(10)
                .padding(10)
            }
        }
        .frame(height: UIScreen.main.bounds.width * 0.7)
    }
}

#Preview {
    MainView()
        .environmentObject(ViewModel())
}
