//
//  SecondPage.swift
//  Recap3
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct SecondPage: View {
    @State private var goPage: Bool = true
    var body: some View {
        VStack{
            
        }.navigationDestination(isPresented: $goPage){
            let kisi = Kisiler(isim: "Okan", yas: 28, boy: 1.80, bekar: true)
            VeriAlinacakOlanSayfa(kisi:kisi)
        }
    }
}

#Preview {
    SecondPage()
}
