//
//  FirstPage.swift
//  Navigator_Stack
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct FirstPage: View {
    @State private var login: Bool = false
    @State private var register: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 80){
                Button("Login"){
                    login = true
                }
                .padding()
                .background(.green)
                .foregroundColor(.black)
                .cornerRadius(8)
                .navigationDestination(isPresented: $login){
                    SecondPage()
                }
                
                Button("Register"){
                    register = true
                }
                .padding()
                .background(.blue)
                .foregroundColor(.black)
                .cornerRadius(8)
                .sheet(isPresented: $register){
                    SecondPage()
                }
                /*
                 //yada
                 .fullScreenCover(isPresented: $login){
                 SecondPage()
                 }
                 */
            }
        }.navigationTitle("Ana Sayfa")
    }
}

#Preview {
    FirstPage()
}
