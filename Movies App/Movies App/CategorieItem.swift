//
//  CategorieItem.swift
//  Movies App
//
//  Created by Okan Aktas on 20.11.2024.
//

import SwiftUI

struct CategorieItem: View {
    var category = Categories()
    
    var body: some View {
        Text(category.category_name!)
    }
}

#Preview {
    CategorieItem()
}
