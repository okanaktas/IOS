//
//  AnaSayfa.swift
//  Recap2
//
//  Created by Okan Aktas on 12.11.2024.
//

import SwiftUI

struct AnaSayfa: View {
    var body: some View {
        NavigationStack {
            VStack{
                NavigationLink(destination: OyunEkrani()){
                    Text("Başla")
                }
            }.navigationTitle("Ana Sayfa")
        }
    }
}

#Preview {
    AnaSayfa()
}
