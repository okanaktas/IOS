//
//  DetailsView.swift
//  Meals App
//
//  Created by Okan Aktas on 20.11.2024.
//

import SwiftUI

struct DetailsView: View {
    
    var meal = Meals()
    
    var body: some View {
        VStack(spacing: 60) {
            
            Image(meal.meal_image!)
            
            Text("\(meal.meal_price!) $")
                .font(.system(size: 50))
                .foregroundStyle(.tint)
            
            Button("Order"){
                print("Sipariş verildi")
            }
            .padding()
            .background(.tint)
            .foregroundStyle(.white)
            .cornerRadius(8)
        }.navigationTitle(meal.meal_name!)
    }
}

#Preview {
    DetailsView()
}
