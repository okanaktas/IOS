//
//  Kisiler.swift
//  Recap6
//
//  Created by Okan Aktas on 27.11.2024.
//

import Foundation


struct Kisiler : Identifiable{
    
    var id = UUID()
    var yetki : String
    var isimler : [String]
    
}

let grup1 = Kisiler(yetki: "Admin", isimler: ["Bugra", "Okan", "Berkay"])
let grup2 = Kisiler(yetki: "Normal Kullanıcı", isimler: ["Ayse", "Ahmet", "Mehmet"])
let grup3 = Kisiler(yetki: "Test Kullanıcı", isimler: ["Fatma", "Ziya", "Fadime"])

let kullaniciDizi = [grup1,grup2,grup3]
