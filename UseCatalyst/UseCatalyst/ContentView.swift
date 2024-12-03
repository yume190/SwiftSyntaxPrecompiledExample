//
//  ContentView.swift
//  UseCatalyst
//
//  Created by 林煒峻 on 2024/12/3.
//

import SwiftUI
import TryCatalyst

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Cata") {
                catalyst()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
