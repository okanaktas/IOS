//
//  ContentView.swift
//  Trial
//
//  Created by Okan Aktas on 4.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var leftChoice = "❓"
    @State private var rightChoice = "❓"
    @State private var leftScore = 0
    @State private var rightScore = 0
    @State private var winnerText = "Shake to Start!"
    @State private var isAnimating = false // Animasyon durumu

    let choices = ["✊", "✋", "✌️"] // Taş, Kağıt, Makas

    var body: some View {
        VStack {
            // Scores Section
            Text("Scores")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)

            HStack {
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.green)
                    Text("\(leftScore)")
                        .font(.title)
                }
                
                Spacer()
                
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                    Text("\(rightScore)")
                        .font(.title)
                }
            }
            .padding(.horizontal, 40)

            Spacer()

            // Choices Section
            HStack {
                Text(leftChoice)
                    .font(.system(size: 80))
                    .rotationEffect(isAnimating ? Angle(degrees: 360) : Angle(degrees: 0))
                    .animation(isAnimating ? .linear(duration: 2).repeatForever(autoreverses: false) : .default, value: isAnimating)
                
                Text(rightChoice)
                    .font(.system(size: 80))
                    .rotationEffect(isAnimating ? Angle(degrees: 360) : Angle(degrees: 0))
                    .animation(isAnimating ? .linear(duration: 2).repeatForever(autoreverses: false) : .default, value: isAnimating)
            }

            // Winner Text
            Text(winnerText)
                .font(.title2)
                .padding(.top)

            Spacer()

            // Shake Instructions
            Text("Shake for Roll!")
                .font(.headline)
                .padding(.bottom)
        }
        .padding()
        .onTapGesture {
            startGameAnimation()
        }
    }

    func startGameAnimation() {
        isAnimating = true
        winnerText = "Rolling..."
        leftChoice = "❓"
        rightChoice = "❓"
        
        // 2 saniyelik bir gecikmeden sonra oyunu oynat
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isAnimating = false
            playGame()
        }
    }

    func playGame() {
        // Randomly select choices for both players
        let leftRandomChoice = choices.randomElement()!
        let rightRandomChoice = choices.randomElement()!

        leftChoice = leftRandomChoice
        rightChoice = rightRandomChoice

        // Determine the winner
        determineWinner(left: leftRandomChoice, right: rightRandomChoice)
    }

    func determineWinner(left: String, right: String) {
        if left == right {
            winnerText = "It's a Draw!"
        } else if (left == "✊" && right == "✌️") ||
                  (left == "✋" && right == "✊") ||
                  (left == "✌️" && right == "✋") {
            winnerText = "Left Player Wins!"
            leftScore += 1
        } else {
            winnerText = "Right Player Wins!"
            rightScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

