//
//  ContentView.swift
//  Tap Gesture
//
//  Created by Okan Aktas on 14.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 80) {
            Text("Hello, world!").onTapGesture {
                print("Tek Tiklandi")
            }
            Text("Merhaba Dünya!").onTapGesture(count: 2) {
                print("Cift Tiklandi")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
