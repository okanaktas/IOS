//
//  ContentView.swift
//  Guess It
//
//  Created by Okan Aktas on 30.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var randomNumber = Int.random(in: 1...5) // Random number
    @State private var guess = "" // User's guess
    @State private var resultMessage = "" // Result message
    @State private var guessCount = 0 // Count of guesses
    
    var body: some View {
        VStack {
            Text("I've thought of a number between 1 and 100. Try to guess it!")
                .font(.headline)
                .padding()
            
            TextField("Enter your guess", text: $guess)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad) // Restrict input to numbers
            
            Button(action: {
                guessCount += 1
                if let guessNumber = Int(guess) {
                    if guessNumber < randomNumber {
                        resultMessage = "Try a higher number."
                    } else if guessNumber > randomNumber {
                        resultMessage = "Try a lower number."
                    } else {
                        resultMessage = "🎉 Congratulations! You guessed it in \(guessCount) attempts!"
                    }
                } else {
                    resultMessage = "Please enter a valid number."
                }
                guess = "" // Clear the input field
            }) {
                Text("Guess")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text(resultMessage)
                .font(.title2)
                .padding()
            
            Spacer()
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
