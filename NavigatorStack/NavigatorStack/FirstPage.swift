//
//  FirstPage.swift
//  NavigatorStack
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct FirstPage: View {
    @State private var login = false
    @State private var register = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 80) {
                
                Button("Login") {
                    login = true
                }
                .navigationDestination(isPresented: $login) {
                    SecondPage()
                }
                
                Button("Register") {
                    register = true
                }
                .sheet(isPresented: $register) {
                    SecondPage()
                }
                /*
                 Ya da
                .fullScreenCover(isPresented: $register) {
                    SecondPage()
                }
                 */
            }.navigationTitle("Ana Sayfa")
        }
    }
}


#Preview {
    FirstPage()
}
