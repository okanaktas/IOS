//
//  GameVİew.swift
//  NumberGuessingGame
//
//  Created by Okan Aktas on 14.11.2024.
//

import SwiftUI

struct GameView: View {
    @State private var goResultView = false
    @State private var remainingGuess = 5
    @State private var info = ""
    @State private var input = ""
    
    var body: some View {
        VStack(spacing: 80) {
            HStack{
                Text("Remaining Guess: ")
                    .font(.system(size: 36))
                
                Text("\(remainingGuess)")
                    .font(.system(size: 36))
                .foregroundColor(remainingGuess > 2 ? .black : .red)}
            
            Text("Help for your guess: \(info)")
                .font(.system(size: 24))
            
            Button("Guess it "){
                goResultView = true
            }
            .padding()
            .frame(width: 250,height: 60)
            .background(.tint)
            .foregroundColor(.white)
            .cornerRadius(8)
        }.navigationDestination(isPresented: $goResultView){
            ResultView()
        }
    }
}

#Preview {
    GameView()
}
