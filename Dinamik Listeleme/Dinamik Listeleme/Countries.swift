    //
    //  Countries.swift
    //  Dinamik Listeleme
    //
    //  Created by Okan Aktas on 19.11.2024.
    //

    import Foundation

    //Bu sınıfı listemele içerisinde kullanmak istiyorsak : Identifiable kullanmamız gerek yoksa hata alırız
    class Countries : Identifiable{
        var name : String?
        
        init(){}
        
        init(name: String? = nil) {
            self.name = name
        }
    }
