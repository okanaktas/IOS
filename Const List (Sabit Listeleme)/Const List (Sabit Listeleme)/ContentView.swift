//
//  ContentView.swift
//  Const List (Sabit Listeleme)
//
//  Created by Okan Aktas on 19.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            ItemDesign(name: "Sun", image: "sun.min")
                .onTapGesture {
                    print("clicked Sun")
                }
            ItemDesign(name: "Moon", image: "moon")
                .onTapGesture {
                    print("clicked Moon")
                }
            ItemDesign(name: "Star", image: "star")
                .onTapGesture {
                    print("clicked Star")
                }
        }
    }
}

struct ItemDesign: View {
    
    var name : String
    var image : String
    
    var body: some View {
        
        HStack {
            Image(systemName: image)
                .imageScale(.large)
            Text(name)
        }
        .padding(2)
    }
}
#Preview {
    ContentView()
}
