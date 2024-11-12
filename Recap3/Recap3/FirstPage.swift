//
//  FirstPage.swift
//  Recap3
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct FirstPage: View {
    @State private var forButton1 = false
    @State private var forButton2 = false
    @State private var forButton3 = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 60){
                Button("Button 1"){
                    forButton1 = true
                }
                    .padding()
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .navigationDestination(isPresented: $forButton1){
                        FirstPage()
                    }
                
                
                Button("Button 2"){
                    forButton3 = true
                }
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                
                
                Button("Button 3"){
                    forButton3 = true
                }
                    .padding()
                    .background(.cyan)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}


#Preview {
    FirstPage()
}
