//
//  ContentView.swift
//  PlayGroundArea
//
//  Created by Okan Aktas on 30.10.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World!")
                .font(.largeTitle)
                .padding()
            Button(action: {
                print("Butona Tıklanıyor")
            }) {
                Text("Bana tıkla")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
