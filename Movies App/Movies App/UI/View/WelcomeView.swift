//
//  WelcomeView.swift
//  Movies App
//
//  Created by Okan Aktas on 20.11.2024.
//

import SwiftUI

struct WelcomeView: View {
    @ObservedObject var viewModel = WelcomeViewViewModel()
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(viewModel.categoryList){category in
                    NavigationLink(destination: HomeView(category: category)){
                            CategorieItem(category: category)
                    }
                }
            }.navigationTitle("Categories")
                .onAppear() {
                    viewModel.loadCategory()
                }
        }
    }
}

#Preview {
    WelcomeView()
}
