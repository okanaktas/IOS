//
//  ContentView.swift
//  Yatay Hizalama
//
//  Created by Okan Aktas on 19.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack{
                ConstGridList(name : "sun", image: "sun.min")
                    .onTapGesture {
                        print("Tiklandi")
                    }
                ConstGridList(name : "moon", image: "moon")
                ConstGridList(name : "star", image: "star")
                ConstGridList(name : "star", image: "star")
                ConstGridList(name : "star", image: "star")
                ConstGridList(name : "star", image: "star")
                ConstGridList(name : "star", image: "star")
                ConstGridList(name : "star", image: "star")
            }
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
