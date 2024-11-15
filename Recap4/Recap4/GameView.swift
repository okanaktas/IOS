//
//  SecondView.swift
//  Recap4
//
//  Created by Okan Aktas on 14.11.2024.
//

import SwiftUI

import SwiftUI

struct GameView: View {
    @State private var tahmin = ""
    @State private var kalanHak = 10
    @State private var goFinishView = false
    @State private var yardim = ""
    @State private var randomNumber = Int.random(in: 0...100) // Başlangıçta bir kez belirlenir
    @State private var sonuc = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 60){
                Text("Kalan Hak: \(kalanHak)")
                Text("Yardım: \(yardim)")
                TextField("Tahmin gir: ", text: $tahmin)
                    .keyboardType(.numberPad)
                    .padding()
                
                Button("Tahmin Et") {
                    kalanHak -= 1
                    
                    if kalanHak <= 0 {
                        goFinishView = true
                        sonuc = "Kaybettiniz"
                    }
                    
                    if let tahminInt = Int(tahmin) {
                        if tahminInt < randomNumber {
                            yardim = "Arttır"
                        } else if tahminInt > randomNumber {
                            yardim = "Azalt"
                        } else {
                            sonuc = "Tebrikler! Doğru tahmin."
                            goFinishView = true
                        }
                    }
                }
                .padding()
                .background(.tint)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .navigationDestination(isPresented: $goFinishView) {
                    FinishView(sonuc: sonuc)
                }
            }
            .onAppear {
                randomNumber = Int.random(in: 0...100) // Görünüm ilk kez ortaya çıktığında belirlenir
            }
        }
    }
}


#Preview {
    GameView()
}
