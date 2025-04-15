//
//  ContentView.swift
//  My SUI App
//
//  Created by Александр Семёнов on 08.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .imageScale(.large)
                .foregroundStyle(.orange)
                .padding(1)
            Text("Hello, fucking world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
