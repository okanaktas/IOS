//
//  ContentView.swift
//  Movies App
//
//  Created by Okan Aktas on 20.11.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var moviesList = [Movies]()
    
    var body: some View {
        NavigationStack {
            GeometryReader {geometry in
                
                let screenWidth = geometry.size.width
                let itemWidth = (screenWidth-40)/2
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())],spacing: 20){
                        ForEach(moviesList){movie in
                            MovieItem(movie: movie, width: itemWidth)
                        }
                    }
                }.padding()
                    .onAppear {
                        var list = [Movies]()
                        
                        let c1 = Categories(category_id: 1,category_name: "Action")
                        
                        let c2 = Categories(category_id: 2,category_name: "Drama")
                        
                        let c3 = Categories(category_id: 3,category_name: "Science")
                        
                        let d1 = Directors(director_id: 1,director_name: "Quentin Tarantino")
                        
                        let d2 = Directors(director_id: 2,director_name: "Christopher Nolan")
                        
                        let d3 = Directors(director_id: 3,director_name: "Nuri Bilge Ceylan")
                        
                        let d4 = Directors(director_id: 4,director_name: "Roman Polanski")
                        
                        let m1 = Movies(movie_id: 1,movie_name: "Django",movie_year: 2009,movie_image: "django",category: c1,director: d1)
                        
                        let m2 = Movies(movie_id: 2,movie_name: "Interstellar", movie_year: 2015,movie_image: "interstellar",category: c3,director: d2)
                        
                        let m3 = Movies(movie_id: 3,movie_name: "Inception", movie_year: 2010,movie_image: "inception",category: c3,director: d2)
                        
                        let m4 = Movies(movie_id: 3,movie_name: "Anadoluda", movie_year: 2010,movie_image: "birzamanlaranadoluda",category: c2,director: d3)
                        
                        let m5 = Movies(movie_id: 3,movie_name: "Inception", movie_year: 2010,movie_image: "inception",category: c2,director: d4)
                        
                        let m6 = Movies(movie_id: 3,movie_name: "Inception", movie_year: 2010,movie_image: "inception",category: c1,director: d1)
                        
                        
                        list.append(m1)
                        list.append(m2)
                        list.append(m3)
                        list.append(m4)
                        list.append(m5)
                        list.append(m6)
                        
                        moviesList = list
                    }
                
            }
            .navigationTitle("Movies")
        }
    }
}

#Preview {
    HomeView()
}
