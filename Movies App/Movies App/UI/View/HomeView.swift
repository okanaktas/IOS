//
//  ContentView.swift
//  Movies App
//
//  Created by Okan Aktas on 20.11.2024.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewViewModel()
    
    var category = Categories()
    
    var body: some View {
        GeometryReader {geometry in
            
            let screenWidth = geometry.size.width
            let itemWidth = (screenWidth-40)/2
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())],spacing: 20){
                    ForEach(viewModel.moviesList){movie in
                        NavigationLink(destination: DetailsView(movie : movie)){
                            MovieItem(movie: movie, width: itemWidth)
                        }
                    }
                }
            }.padding()
                .navigationTitle(category.category_name!)
                .onAppear {
                    viewModel.loadMovie(category_id: category.category_id!)
                }
            
        }
        .navigationTitle("Movies")
    }
}

#Preview {
    HomeView()
}
