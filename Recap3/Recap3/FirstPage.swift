//
//  FirstPage.swift
//  Recap3
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct FirstPage: View {
    @State private var navigateToSecondPage = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Go to Second Page") {
                    navigateToSecondPage = true
                }
                .navigationDestination(isPresented: $navigateToSecondPage) {
                    SecondPage()
                }
            }.navigationTitle("Ana Sayfa")
        }
    }
}


#Preview {
    FirstPage()
}
