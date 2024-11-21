//
//  Meals.swift
//  Meals App
//
//  Created by Okan Aktas on 20.11.2024.
//

import Foundation

class Meals : Identifiable{
    var mel_id: Int?
    var meal_name: String?
    var meal_image: String?
    var meal_price: Int?
    
    init(){
        
    }
    
    init(mel_id: Int? = nil, meal_name: String? = nil, meal_image: String? = nil, meal_price: Int? = nil) {
        self.mel_id = mel_id
        self.meal_name = meal_name
        self.meal_image = meal_image
        self.meal_price = meal_price
    }
}
