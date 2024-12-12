//
//  ContentView.swift
//  Recap7
//
//  Created by Okan Aktas on 27.11.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var number = 0
    @State private var goToSecondView = false
    
    var body: some View {
        
        HStack (spacing: 20){
            
            Button("-"){
                number -= 1
            }
            .font(.system(size: 48))
            
            Text("\(number)")
                .font(.system(size: 48))
            
            Button("+"){
                number += 1
            }
            .font(.system(size: 45))

        }
        .padding()
        
        VStack{
            Button("Go to SecondView"){
                if(number > 10){
                    goToSecondView.toggle()
                }
            }
                .padding()
                .background(.tint)
                .foregroundStyle(.white)
                .cornerRadius(8)
                .sheet(isPresented: $goToSecondView){
                    SecondView()
                }
        }
    }
}

#Preview {
    HomeView()
}
