//
//  WelcomeView.swift
//  Movies App
//
//  Created by Okan Aktas on 20.11.2024.
//

import SwiftUI

struct WelcomeView: View {
    @State private var categoryList = [Categories]()
    var body: some View {
        NavigationStack {
            List{
                ForEach(categoryList){category in
                    NavigationLink(destination: HomeView(category: category)){
                            CategorieItem(category: category)
                    }
                }
            }.navigationTitle("Categories")
                .onAppear() {
                    var list = [Categories]()
                    let c1 = Categories(category_id: 1, category_name: "Action")
                    let c2 = Categories(category_id: 2, category_name: "Drama")
                    let c3 = Categories(category_id: 3, category_name: "Science")
                    
                    list.append(c1)
                    list.append(c2)
                    list.append(c3)
                    
                    self.categoryList = list
                }
        }
    }
}

#Preview {
    WelcomeView()
}
