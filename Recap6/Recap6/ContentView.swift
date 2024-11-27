//
//  ContentView.swift
//  Recap6
//
//  Created by Okan Aktas on 26.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 40){
            
            Image("december")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.height * 0.25)
                .clipShape(Circle())
                .overlay(Circle().stroke(.white,lineWidth: 5))
                .shadow(radius: 20)
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            
            ZStack {
                Image("december")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("Aralık")
                    .padding(.top, 140)
                    .font(.system( size: 60))
                    .bold()
            }
            
            Button("Deneme"){
                
            }
            .padding()
            .background(.tint)
            .foregroundStyle(.white)
            .cornerRadius(8)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
