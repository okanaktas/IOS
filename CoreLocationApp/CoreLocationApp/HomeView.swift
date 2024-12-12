//
//  ContentView.swift
//  CoreLocationApp
//
//  Created by Okan Aktas on 29.11.2024.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            Text("Latitude: \(locationManager.location.coordinate.latitude)")
            
            Text("Longitude: \(locationManager.location.coordinate.longitude)")
            
            Text("Hız: \(locationManager.location.speed)")
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
