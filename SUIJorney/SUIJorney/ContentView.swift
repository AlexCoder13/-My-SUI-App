//
//  ContentView.swift
//  SUIJorney
//
//  Created by Александр Семёнов on 30.06.2025.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var titleText = "My first SUI App!"
//    @State private var imageName = "star.fill"
    @State private var hasWaved = false
    
    var body: some View {
        
        let titleText = hasWaved ? "Привет, SwiftUI!" : "My first SUI App!"
        let imageName = hasWaved ? "hand.wave" : "hand.wave.fill"
        let buttonText = hasWaved ? "Помахать еще раз" : "Помахать"
        
        VStack(spacing: 20) {
            Text(titleText)
                .font(.largeTitle)
                .foregroundColor(.gray)
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundStyle(.gray)
            Button(buttonText) {
                hasWaved.toggle()
            }
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
        }
    }
}

#Preview {
    ContentView()
}
