//
//  GameVİew.swift
//  NumberGuessingGame
//
//  Created by Okan Aktas on 14.11.2024.
//

import SwiftUI

struct GameView: View {
    @State private var goResultView = false
    @State private var remainingGuess = 10
    @State private var info = ""
    @State private var input = ""
    @State private var randomNumber = 0
    
    @State private var result = false
    
    var body: some View {
        
        VStack(spacing: 60) {
            HStack{
                Text("Remaining Guess: ")
                    .font(.system(size: 36))
                
                Text("\(remainingGuess)")
                    .font(.system(size: 36))
                    .foregroundColor(remainingGuess > 3 ? .black : .red)
            }
            
            Text("Help for your guess: \(info)")
                .font(.system(size: 24))
            
            TextField("Guess: ", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)
            
            Button("Guess it "){
                remainingGuess -= 1
                if(remainingGuess <= 0){
                    goResultView = true
                    result = false
                }else{
                    if let input = Int(input){
                        if input == randomNumber{
                            goResultView = true
                            result = true
                        }
                        else if input > randomNumber{
                            info = "Try a lower number"
                        }
                        else if input < randomNumber{
                            info = ("Try a higher number!")
                        }
                    }
                }
            }
            .padding()
            .frame(width: 250,height: 60)
            .background(.tint)
            .foregroundColor(.white)
            .cornerRadius(8)
        }.navigationDestination(isPresented: $goResultView){
            ResultView(result: result)
        }.onAppear(){
            randomNumber = Int.random(in: 1...100)
        }
    }
}

#Preview {
    GameView()
}
