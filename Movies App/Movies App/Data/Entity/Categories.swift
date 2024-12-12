//
//  Categories.swift
//  Movies App
//
//  Created by Okan Aktas on 20.11.2024.
//

import Foundation

class Categories : Identifiable{
    var category_id : Int?
    var category_name : String?
    
    init(){
        
    }
    
    init(category_id: Int? = nil, category_name: String? = nil) {
        self.category_id = category_id
        self.category_name = category_name
    }
}
