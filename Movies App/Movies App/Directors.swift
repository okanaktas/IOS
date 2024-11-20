//
//  Directors.swift
//  Movies App
//
//  Created by Okan Aktas on 20.11.2024.
//

import Foundation

class Directors : Identifiable {
    var director_id : Int?
    var director_name : String?
    
    init(){
        
    }
    
    init(director_id: Int? = nil, director_name: String? = nil) {
        self.director_id = director_id
        self.director_name = director_name
    }
}
