//
//  MovieItem.swift
//  Movies App
//
//  Created by Okan Aktas on 20.11.2024.
//

import SwiftUI

struct MovieItem: View {
    
    var movie = Movies()
    var width = 0.0
    
    var body: some View {
        VStack(spacing: 5){
            Image(movie.movie_image!).resizable().frame(width: width)
            
            Text(movie.movie_name!).foregroundStyle(.gray).padding(.top,6)
            
            Button("Add to Cart"){
                print("\(movie.movie_name!) Added to Cart")
            }
                .padding(8)
                .background(.tint)
                .foregroundStyle(.white)
                .cornerRadius(8)
                .padding(.top,15)
                .padding(.bottom,20)
        }
        .background(Rectangle().fill(.white).shadow(radius: 10))
    }
}
