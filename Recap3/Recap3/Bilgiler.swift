//
//  Bilgiler.swift
//  Recap3
//
//  Created by Okan Aktas on 13.11.2024.
//

import Foundation

class Kisiler{
    var isim: String?
    var yas : Int?
    var boy : Double?
    var bekar : Bool?
    
    init(){
        
    }
    
    init(isim: String, yas: Int, boy: Double, bekar: Bool) {
        self.isim = isim
        self.yas = yas
        self.boy = boy
        self.bekar = bekar
    }
}
