//
//  WelcomeView.swift
//  Trial
//
//  Created by Okan Aktas on 6.01.2025.
//


import SwiftUI

struct WelcomeView: View {

    var body: some View {
        VStack(spacing: 30) {
            Text("Welcome to Rock Paper Scissors!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()

            Text("Shake your device to play a fun and exciting game of Rock, Paper, Scissors.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Spacer()

            Image(systemName: "hand.raised.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)

            Spacer()

            NavigationLink(destination: HomeView()) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
        }
        .padding()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WelcomeView()
        }
    }
}
