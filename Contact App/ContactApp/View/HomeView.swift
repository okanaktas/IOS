//
//  ContentView.swift
//  ContactApp
//
//  Created by Okan Aktas on 8.12.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List {
               
                
                
                
                
            }
            .padding()
            .navigationTitle("Contact")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: AddContact()) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
