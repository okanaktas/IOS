//
//  ContentView.swift
//  Const Grid List
//
//  Created by Okan Aktas on 19.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView{
                LazyVGrid(
                    columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                    ],spacing: 10){
                        ConstGridList(name : "Sun", image: "sun.min")
                            .onTapGesture {
                                print("Tiklandi")
                            }
                        ConstGridList(name : "Moon", image: "moon")
                        ConstGridList(name : "Star", image: "star")
                        ConstGridList(name : "Sun", image: "sun.min")
                        ConstGridList(name : "Sun", image: "sun.min")
                    }
            }.padding(10)
        }
        .padding()
    }
}

struct ConstGridList : View {
    var name : String
    var image : String
    var body : some View {
        VStack{
            Image(systemName: image)
            Text(name)
        }.frame(width: 100,height: 100)
            .border(.gray)
    }
}

#Preview {
    ContentView()
}
