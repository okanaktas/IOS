//
//  ResultView.swift
//  NumberGuessingGame
//
//  Created by Okan Aktas on 14.11.2024.
//

import SwiftUI

struct ResultView: View {
    @State private var result = false
    
    var body: some View {
        VStack(spacing: 60){
            if(result){
                Text("You Lose")
                    .font(.system(size: 36))
                    .bold()
                Image("sad")
                    .resizable().frame(width: 128,height: 128)
                    .imageScale(.large)
                    .foregroundStyle(.red)
            }else{
                Text("You Win !")
                    .font(.system(size: 36))
                    .bold()
                Image("smile")
                    .resizable().frame(width: 128,height: 128)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
       
        }
    }
}

#Preview {
    ResultView()
}
