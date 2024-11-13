//
//  ContentView.swift
//  SegmentedControl
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var segmentedStatus = 0
    
    var body: some View {
        VStack {
            Picker("",selection: $segmentedStatus){
                Text("First").tag(0)
                Text("Second").tag(1)
                Text("Third").tag(2)
            }
            .pickerStyle(.segmented)
            .onChange(of: segmentedStatus) { value in
                print("Segmented Status: \(value)")
            }
            
            // Seçilen değeri gösteren Text
            Text("Selected: \(segmentedStatus == 0 ? "First" : segmentedStatus == 1 ? "Second" : "Third")")
                .font(.headline)
                .padding()
            
            Button("Show it ") {
                print("Segmented Status: \(segmentedStatus)")
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
