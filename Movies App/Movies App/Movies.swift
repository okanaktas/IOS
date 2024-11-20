//
//  Movies.swift
//  Movies App
//
//  Created by Okan Aktas on 20.11.2024.
//

import Foundation

class Movies : Identifiable {
    var movie_id : Int?
    var movie_name : String?
    var movie_year : Int?
    var movie_image : String?
    var category : Categories?
    var director : Directors?
    
    init(){
        
    }
    
    init(movie_id: Int? = nil, movie_name: String? = nil, movie_year: Int? = nil, movie_image: String? = nil, category: Categories? = nil, director: Directors? = nil) {
        self.movie_id = movie_id
        self.movie_name = movie_name
        self.movie_year = movie_year
        self.movie_image = movie_image
        self.category = category
        self.director = director
    }
}
