//
//  BilgiSayfasi.swift
//  Sayfalar_Arasi_Veri_Transeri
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct BilgiSayfasi: View {
    var kisi = Kisiler()
    
    var body: some View {
        VStack{
            Text("\(kisi.isim!) - \(kisi.yas!) - \(kisi.boy!) - \(kisi.bekar!)")
        }
    }
}

#Preview {
    BilgiSayfasi()
}
