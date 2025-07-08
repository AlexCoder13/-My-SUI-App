//
//  TechnologyListView.swift
//  SUIJorney
//
//  Created by Александр Семёнов on 07.07.2025.
//

import SwiftUI

struct TechnologyDetailView: View {
    var technology: Technology
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: technology.imageName)
                .font(.system(size: 80))
                .foregroundStyle(.orange)
            Text(technology.name)
                .font(.title)
        }
        .navigationTitle(technology.name)
    }
}

struct Technology: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

let technologies = [
    Technology(name: "SwiftUI", imageName: "swift"),
    Technology(name: "UIKit", imageName: "apps.iphone"),
    Technology(name: "Core Data", imageName: "cylinder.split.1x2"),
    Technology(name: "Combine", imageName: "arrow.triangle.2.circlepath")
]

struct TechnologyListView: View {
    var body: some View {
        
        NavigationStack {
            List(technologies) { technology in
                NavigationLink {
                    TechnologyDetailView(technology: technology)
                } label: {
                    HStack {
                        Image(systemName: technology.imageName)
                            .font(.title) // Для SF Symbols лучше использовать .font, а не .resizable
                            .frame(width: 35) // Фиксированная ширина для выравнивани
                        Text(technology.name)
                        
                        Spacer()
                    }
                }
            }
            .navigationTitle("Технологии Apple")
        }
    }
}

#Preview {
    TechnologyListView()
}

