//
//  FirstPage.swift
//  Recap3
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct FirstPage: View {
    @State private var goFirstPage : Bool = false
    @State private var goSecondPage : Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 60){
                Button("Go to First Page!"){
                    goFirstPage = true
                }
                .padding()
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .navigationDestination(isPresented: $goFirstPage){
                    SecondPage()
                }
                
                Button("Go to Second Page!"){
                    goSecondPage = true
                }
                .padding()
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .sheet(isPresented: $goSecondPage){
                    ThirdtPage()
                }
            }
        }
    }
}

#Preview {
    FirstPage()
}
