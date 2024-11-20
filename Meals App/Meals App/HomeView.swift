//
//  ContentView.swift
//  Meals App
//
//  Created by Okan Aktas on 20.11.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var mealsList = [Meals]()
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(mealsList) { meal in
                    NavigationLink(destination: DetailsView(meal: meal)){
                        MealLineDesign(meal: meal)
                    }
                }
            }.navigationTitle("Meals")
                .onAppear() {
                    var list = [Meals]()
                    
                    let m1 = Meals(mel_id: 1, meal_name: "Ayran", meal_image: "ayran",meal_price: 10)
                    
                    let m2 = Meals(mel_id: 2, meal_name: "Baklava", meal_image: "baklava",meal_price: 15)
                    
                    let m3 = Meals(mel_id: 3, meal_name: "Fanta", meal_image: "fanta",meal_price: 20)
                    
                    let m4 = Meals(mel_id: 4, meal_name: "Kadayıf", meal_image: "kadayif",meal_price: 40)
                    
                    let m5 = Meals(mel_id: 5, meal_name: "Kofte", meal_image: "kofte",meal_price: 35)
                    
                    let m6 = Meals(mel_id: 6, meal_name: "Makarna", meal_image: "makarna",meal_price: 35)
                    
                    list.append(m1)
                    list.append(m2)
                    list.append(m3)
                    list.append(m4)
                    list.append(m5)
                    list.append(m6)
                    
                    mealsList = list
                    
                }
        }
    }
}

#Preview {
    HomeView()
}
