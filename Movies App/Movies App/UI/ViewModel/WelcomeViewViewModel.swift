//
//  WelcomeViewViewModel.swift
//  Movies App
//
//  Created by Okan Aktas on 22.11.2024.
//

import Foundation

class WelcomeViewViewModel: ObservableObject {
    @Published var categoryList = [Categories]()
    
    
    func loadCategory(){
        var list = [Categories]()
        let c1 = Categories(category_id: 1, category_name: "Action")
        let c2 = Categories(category_id: 2, category_name: "Drama")
        let c3 = Categories(category_id: 3, category_name: "Science")
        
        list.append(c1)
        list.append(c2)
        list.append(c3)
        
        categoryList = list
    }
    
}
