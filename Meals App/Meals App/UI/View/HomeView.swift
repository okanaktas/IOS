//
//  ContentView.swift
//  Meals App
//
//  Created by Okan Aktas on 20.11.2024.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewViewModel()
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(viewModel.mealsList) { meal in
                    NavigationLink(destination: DetailsView(meal: meal)){
                        MealLineDesign(meal: meal)
                    }
                }
            }.navigationTitle("Meals")
                .onAppear() {
                    viewModel.uploadMeals()
                }
        }
    }
}

#Preview {
    HomeView()
}
