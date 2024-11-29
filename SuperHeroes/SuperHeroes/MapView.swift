//
//  MapView.swift
//  SuperHeroes
//
//  Created by Okan Aktas on 29.11.2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: superHeroesList.first?.coordinateLocation ?? CLLocationCoordinate2D(latitude: 41.8713679, longitude: -87.7669902), // Varsayılan ilk süper kahramanın koordinatı
        span: MKCoordinateSpan(latitudeDelta: 10.0, longitudeDelta: 10.0) // Harita görünümünün yakınlık seviyesi
    )

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: superHeroesList) { hero in
            // Her kahraman için işaretçi
            MapAnnotation(coordinate: hero.coordinateLocation) {
                VStack {
                    Image(hero.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 5)
                    
                    Text(hero.name)
                        .font(.caption)
                        .bold()
                        .foregroundColor(.black)
                        .background(Color.white.opacity(0.7))
                        .clipShape(Capsule())
                }
            }
        }
        .mapStyle(.standard) // Harita stilini standard olarak ayarlar
    }
}

#Preview {
    MapView()
}
