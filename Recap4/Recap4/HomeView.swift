//
//  ContentView.swift
//  Recap4
//
//  Created by Okan Aktas on 14.11.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var goGameView = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 60) {
                Text("Welcome !")
                    .font(.system(size: 34))
                
                Button("Go Game Screen !"){
                    goGameView = true
                }
                .padding()
                .background(.tint)
                .foregroundColor(.white)
                .cornerRadius(10)
                .navigationDestination(isPresented: $goGameView){
                    GameView()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
