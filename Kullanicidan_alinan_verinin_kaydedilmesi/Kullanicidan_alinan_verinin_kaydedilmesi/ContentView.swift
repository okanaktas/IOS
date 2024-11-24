//
//  ContentView.swift
//  Kullanicidan_alinan_verinin_kaydedilmesi
//
//  Created by Okan Aktas on 25.11.2024.

import SwiftUI

struct ContentView: View {
    @State private var inputValue = "" // TextField'ın içeriği
    @State private var lastValue = ""  // Text etiketi için saklanan değer
    
    var body: some View {
        VStack{
            // Text, sadece butona tıklanınca güncellenir
            Text("Last Value: \(lastValue)")
                .onAppear() {
                    // Kullanıcıdan kaydedilen değeri al
                    let ud = UserDefaults.standard
                    if let savedValue = ud.string(forKey: "lastValue") {
                        lastValue = savedValue
                    }
                }
    
            // TextField, kullanıcıya giriş yapması için
            TextField("Enter a value", text: $inputValue)
                .padding()
                .textFieldStyle(PlainTextFieldStyle())
            
            // Save butonu
            Button("Save") {
                // Butona tıklanınca TextField'daki değeri kaydet
                let ud = UserDefaults.standard
                ud.set(inputValue, forKey: "lastValue")
                
                // TextField'dan değeri al ve Text'e aktar
                lastValue = inputValue
                
                // TextField'ı temizle
                inputValue = ""
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
