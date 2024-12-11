//
//  ContentView.swift
//  Deneme
//
//  Created by Okan Aktas on 11.12.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value1 = ""
    @State private var value2 = ""
    
    func topla(deger1 : String, deger2 : String){
        print("2 deger toplami: \(Int(deger1)! + Int(deger2)!)")
    }
    
    var body: some View {
        VStack {
            
            TextField("Value1: ", text: $value1)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Value2: ", text: $value2)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Topla") {
                topla(deger1: value1, deger2: value2)
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
