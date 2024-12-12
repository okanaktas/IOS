//
//  User.swift
//  Recap8
//
//  Created by Okan Aktas on 27.11.2024.
//

import Foundation

struct User : Identifiable{
    var id = UUID()
    
    var name : String
    var age : Int
}

var firstUser = User(name: "Okan", age: 28)
var secondUser = User(name: "Berkay", age: 11)

var userList = [firstUser, secondUser]
