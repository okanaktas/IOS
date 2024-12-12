//
//  ContentView.swift
//  Searchable
//
//  Created by Okan Aktas on 16.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var searchedWord: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("Search")
            .padding()
        }.searchable(text: $searchedWord, prompt: "Search")
            .onChange(of: searchedWord) { _ , s in
                print("Result for search: \(s)")
            }
    }
}

#Preview {
    ContentView()
}
