//
//  MealLineDesign.swift
//  Meals App
//
//  Created by Okan Aktas on 20.11.2024.
//

import SwiftUI

struct MealLineDesign: View {
    var meal = Meals()
    
    var body: some View {
        HStack{
            Image(meal.meal_image!).resizable().frame(width: 100,height: 100)
            
            VStack(alignment: .leading,spacing: 30){
                Text(meal.meal_name!)
                Text("\(meal.meal_price!) $").foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    MealLineDesign()
}
