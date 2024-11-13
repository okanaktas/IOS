//
//  ContentView.swift
//  Stepper
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var stepperStatus : Int = 0
    var body: some View {
        VStack {
            Stepper("Stepper", value : $stepperStatus, in: 0...10)
                .padding()
            
            Text("Sonuc: \(stepperStatus)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
