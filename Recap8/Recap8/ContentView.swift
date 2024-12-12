//
//  ContentView.swift
//  Recap8
//
//  Created by Okan Aktas on 27.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List(userList){user in
                    NavigationLink(destination: SecondView(inputValue: user.name)){
                        Text(user.name)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
