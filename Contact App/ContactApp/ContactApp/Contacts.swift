//
//  Contacts.swift
//  ContactApp
//
//  Created by Okan Aktas on 9.12.2024.
//

import Foundation

class Contacts : Identifiable{
    var contact_id : Int?
    var contact_name : String?
    var contact_phone : String?
    
    init(){
        
    }
    
    init(contact_id: Int, contact_name: String, contact_phone: String) {
        self.contact_id = contact_id
        self.contact_name = contact_name
        self.contact_phone = contact_phone
    }
    
    
}
