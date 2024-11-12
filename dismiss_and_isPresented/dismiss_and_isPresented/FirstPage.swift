//
//  FirstPage.swift
//  dismiss_and_isPresented
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct FirstPage: View {
    @State private var goSecondPage: Bool = false
    var body: some View {
        NavigationStack {
            VStack{
                //                Duruma bağlı buton
                //                Button("Go Second Page"){
                //                    goSecondPage = true
                //                }
                //                .padding()
                //                .background(.black)
                //                .foregroundColor(.white)
                //                .cornerRadius(8)
                //                .navigationDestination(isPresented: $goSecondPage){
                //                    SecondPage()
                //                }
                NavigationLink(destination: SecondPage()){
                    Text("Go Second Page")
                }
                .padding()
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }
    }
}

#Preview {
    FirstPage()
}
