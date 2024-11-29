//
//  SuperHeroes.swift
//  SuperHeroes
//
//  Created by Okan Aktas on 29.11.2024.
//

import Foundation
import CoreLocation

struct SuperHeroes : Identifiable {
    
    var id = UUID()
    var name : String
    var realName : String
    var imageName : String
    var city : String
    var job : String
    var coordinate : Coordinate
    
    var coordinateLocation : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
    
}

struct Coordinate {
    var latitude : Double
    var longitude : Double
}

let batman = SuperHeroes(name: "Batman", realName: "Bruce Wayne", imageName: "batman", city: "Gothem", job: "Business", coordinate: Coordinate(latitude: 41.8713679, longitude: -87.7669902))

let superman = SuperHeroes(name: "SuperMan", realName: "Clark Kent", imageName: "superman", city: "Kansas", job: "Journalist", coordinate: Coordinate(latitude: 39.0865207, longitude: -94.7089592))

let spiderman = SuperHeroes(name: "SpiderMan", realName: "Peter Parker", imageName: "spiderman", city: "New York", job: "Photographer", coordinate: Coordinate(latitude: 40.7160119, longitude: -74.0524729))

let ironman = SuperHeroes(name: "Iron Man", realName: "Tony Stark", imageName: "ironman", city: "Los Angelese", job: "Business", coordinate: Coordinate(latitude: 33.8003309, longitude: -118.2261494))

let superHeroesList = [batman, superman, spiderman, ironman]
