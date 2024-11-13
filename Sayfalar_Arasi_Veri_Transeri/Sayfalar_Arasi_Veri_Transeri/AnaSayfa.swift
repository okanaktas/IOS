//
//  AnaSayfa.swift
//  Sayfalar_Arasi_Veri_Transeri
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct AnaSayfa: View {
    @State private var goPage: Bool = false
    var body: some View {
        NavigationStack {
            VStack{
                Button("Bilgi Gönder"){
                    goPage = true
                }.navigationDestination(isPresented: $goPage){
                    let kisi = Kisiler(isim: "Okan", yas: 28, boy: 1.80, bekar: true)
                    BilgiSayfasi(kisi:kisi)
                }
            }
        }
    }
}

#Preview {
    AnaSayfa()
}
