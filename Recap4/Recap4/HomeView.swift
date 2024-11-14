//
//  ContentView.swift
//  Recap4
//
//  Created by Okan Aktas on 14.11.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var goSecondView = false
    @State private var merhaba = "Merhabalar"
    var body: some View {
        NavigationStack {
            VStack {
                Button("Go Second Page"){
                    goSecondView = true
                }
                .padding()
                .background(.tint)
                .foregroundColor(.white)
                .cornerRadius(10)
                .navigationDestination(isPresented: $goSecondView){
                    SecondView(deger : merhaba)
                }
                
            }
        }
    }
}

#Preview {
    HomeView()
}
