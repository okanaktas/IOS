//
//  ContentView.swift
//  Gorunumler
//
//  Created by Okan Aktas on 27.11.2024.

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        
        VStack(spacing: 20){
            
            Images(image: Image("amsterdam"))
            
            Images(image: Image("antalya"))
            
            ZStack {
                Image("december")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                Text("Aralık")
                    .padding(.top, 140)
                    .font(.system( size: 60))
                    .bold()
            }
            
        }
        .padding()
    }
}

#Preview {
    HomeScreenView()
}
