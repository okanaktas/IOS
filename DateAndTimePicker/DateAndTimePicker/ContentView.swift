//
//  ContentView.swift
//  DateAndTimePicker
//
//  Created by Okan Aktas on 16.11.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var time = Date()
    @State private var date = Date()
    @State private var inputDate = ""
    @State private var inputTime = ""
    
    var body: some View {
        VStack(spacing: 60) {
            
            DatePicker("Saat", selection: $time, displayedComponents: [.hourAndMinute])
                .padding()
            
            DatePicker("Tarih", selection: $date, displayedComponents: [.date])
                .padding()
            
            Text("Time: \(inputTime)")
            Text("Date: \(inputDate)")
            
            Button("Göster"){
                let tf = DateFormatter()
                tf.dateFormat = "HH:mm"
                inputTime = tf.string(from: time)
                
                let df = DateFormatter()
                df.dateFormat = "MM/dd/yyyy"
                inputDate = df.string(from: date)
            }
            .padding()
            .background(.tint)
            .foregroundStyle(.white)
            .cornerRadius(8)
            
            
        }.padding()
    }
}

#Preview {
    ContentView()
}
