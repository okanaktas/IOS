//
//  ContentView.swift
//  MVVM_Example_Calculator
//
//  Created by Okan Aktas on 21.11.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var firstValue = ""
    @State private var secondValue = ""
    
    @ObservedObject private var homeViewViewModel = HomeViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                
                TextField("First Value: ", text: $firstValue)
                    .padding()
                
                TextField("Second Value: ", text: $secondValue)
                    .padding()
                
                
                HStack(spacing: 20){
                    Button("Sum") {
                        homeViewViewModel.sum(firstValue: firstValue, secondValue: secondValue)
                    }
                    .padding()
                    .background(.tint)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
                    
                    Button("Multiply") {
                        homeViewViewModel.multiply(firstValue: firstValue, secondValue: secondValue)
                    }
                    .padding()
                    .background(.tint)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
                }.padding()
                
                Text("Result: \(homeViewViewModel.result)").font(.system(size: 28))
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
