//
//  ContentView.swift
//  NumberGuessingGame
//
//  Created by Okan Aktas on 14.11.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var goGameView = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 80) {
                Text("Guessing Game")
                    .font(.system(size: 36))
                Image("dice")
                    .resizable().frame(width: 128,height: 128)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Button("Start Game"){
                    goGameView = true
                }
                .padding()
                .frame(width: 250,height: 60)
                .background(.tint)
                .foregroundColor(.white)
                .cornerRadius(8)
            }.navigationDestination(isPresented: $goGameView){
                GameView()
            }
        }
    }
}

#Preview {
    HomeView()
}
