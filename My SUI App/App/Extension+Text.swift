//
//  Extension+Text.swift
//  My SUI App
//
//  Created by Александр Семёнов on 18.04.2025.
//
import Foundation
import SwiftUI

extension Text {
    func titleFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 18, weight: .bold, design: .rounded))
            .opacity(0.8)
    }
    
    func subTitle() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 15, weight: .regular, design: .rounded))
            .opacity(0.8)
    }
}

struct FontView: View {
    var body: some View {
        Text("Title Font")
            .titleFont()
            
        Text("Subtitle Font")
            .subTitle()
    }
}

#Preview {
    FontView()
}
