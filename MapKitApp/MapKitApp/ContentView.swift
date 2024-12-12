//
//  ContentView.swift
//  MapKitApp
//
//  Created by Okan Aktas on 1.12.2024.
//

import SwiftUI
import MapKit

//36.880924810415905, 30.66866527377243

struct Pin : Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct ContentView: View {
    @State private var area = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.880924810415905, longitude: 30.66866527377243), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    
    let pins = [
        Pin(coordinate: CLLocationCoordinate2D(latitude: 38.43666256920452, longitude: 30.66866527377243)),
        Pin(coordinate: CLLocationCoordinate2D(latitude: 36.880924810415905, longitude: 27.141546867917253)),
    ]
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $area, annotationItems: pins){pin in
                MapMarker(coordinate: pin.coordinate)}
                .frame(width: 350, height: 300)
                .padding()
            
            Button("Go to other area"){
                //38.43666256920452, 27.141546867917253
                
                withAnimation(.easeInOut) {
                    
                    area.center = CLLocationCoordinate2D(latitude: 38.43666256920452, longitude: 27.141546867917253)
                    
                    area.span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
                    
                }
            }
            .padding()
            .background(.tint)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
