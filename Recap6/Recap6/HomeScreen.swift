//
//  ContentView.swift
//  Recap6
//
//  Created by Okan Aktas on 26.11.2024.
//

import SwiftUI

struct HomeScreen: View {
    
    let list = ["Bugra", "Okan", "Berkay"]
    
    var body: some View {
        
        NavigationStack {
            List{
                ForEach(kullaniciDizi){grup in
                    Section(header: Text(grup.yetki)){
                        ForEach(grup.isimler, id: \.self){isim in
                            Text(isim)
                        }
                    }
                }
            }
            
            
        }
    }
}

#Preview {
    HomeScreen()
}
