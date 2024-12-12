//
//  ContentView.swift
//  Alert
//
//  Created by Okan Aktas on 16.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var alertButton = false
    var body: some View {
        VStack {
            
            
            Button("Alert Button"){
                alertButton = true
            }.padding()
                .frame(width: 180,height: 60)
                .background(.tint)
                .foregroundStyle(.white)
                .cornerRadius(8)
                .alert("Başlık",isPresented: $alertButton) {
                    Button("İptal",role: .cancel){
                        print("İptal")
                    }
                    Button("Tamam",role: .destructive){
                        print("Tamam")
                    }
                }message:{
                    Text("İçerik")
                }
            
            
            
            
            
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
