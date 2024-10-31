//
//  ContentView.swift
//  PlayGroundArea
//
//  Created by Okan Aktas on 30.10.2024.
//

import SwiftUI

var firstTık=""
let secondTık="Aman Ormancııııığ"

struct ContentView: View {
    var body: some View {
        VStack {
            Text(firstTık)
            Button(action: {
                firstTık = secondTık
            }) {
                Text("Bana tıkla")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }.padding()
            
        }
    }
}

#Preview {
    ContentView()
}
