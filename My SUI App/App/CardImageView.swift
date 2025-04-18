//
//  CardImageView.swift
//  My SUI App
//
//  Created by Александр Семёнов on 18.04.2025.
//

import SwiftUI

struct CardImageView: View {
    //MARK: - Properties
    let url: URL
    let width: CGFloat
    let height: CGFloat
    
    // MARK: - Body
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFill()
                .frame(width: width, height: height)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        } placeholder: {
            ProgressView()
                .frame(width: width, height: height)
        }
    }
    
}

