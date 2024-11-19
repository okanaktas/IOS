//
//  Person.swift
//  ContactApp
//
//  Created by Okan Aktas on 19.11.2024.
//

import Foundation

class Person : Identifiable{
    var person_id: Int?
    var person_name: String?
    var person_phone:String?
    
    init(){
        
    }
    
    init(person_id: Int? = nil, person_name: String? = nil, person_phone: String? = nil) {
        self.person_id = person_id
        self.person_name = person_name
        self.person_phone = person_phone
    }
}
