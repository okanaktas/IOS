//
//  HomePage.swift
//  TabView
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationStack {
            TabView {
                FirstPage().tabItem {
                    Label("First Page", systemImage: "homekit")
                }
                SecondPage().tabItem {
                    Label("Second Page", systemImage: "gear")
                }
            }.navigationTitle("TabView")
        }
    }
}

#Preview {
    HomePage()
}
