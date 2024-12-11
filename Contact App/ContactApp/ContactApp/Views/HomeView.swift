//
//  ContentView.swift
//  ContactApp
//
//  Created by Okan Aktas on 11.12.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    
                }
            }
            .navigationTitle("Contacts")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink(destination: AddContactView()){
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
