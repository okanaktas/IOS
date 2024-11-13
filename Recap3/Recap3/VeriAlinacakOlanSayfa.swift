//
//  VeriAlinacakOlanSayfa.swift
//  Recap3
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct VeriAlinacakOlanSayfa: View {
    
    var kisi = Kisiler()
    
    var body: some View {
        VStack{
            Text("\(kisi.isim!) - \(kisi.yas!) - \(kisi.boy!) - \(kisi.bekar!)")
        }
    }
}

#Preview {
    VeriAlinacakOlanSayfa()
}
