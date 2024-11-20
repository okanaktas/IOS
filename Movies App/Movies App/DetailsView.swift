//
//  DetailsView.swift
//  Movies App
//
//  Created by Okan Aktas on 20.11.2024.
//

import SwiftUI

struct DetailsView: View {
    var movie = Movies()
    
    var body: some View {
        VStack{
            Image(movie.movie_image!)
            
            Text(movie.director!.director_name!).font(.system(size: 30))
            
            Text(String(movie.movie_year!)).font(.system(size: 30)).foregroundStyle(.tint)
            
            Button("Add to Cart"){
                print("Added to cart")
            }
            .padding()
            .background(.green)
            .foregroundStyle(.white)
            .cornerRadius(8)
        }.navigationTitle(movie.movie_name!)
    }
}

#Preview {
    DetailsView()
}
