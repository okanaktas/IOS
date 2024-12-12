//
//  ContentView.swift
//  Picker
//
//  Created by Okan Aktas on 16.11.2024.
//

import SwiftUI

struct PickerView: View {
    @State private var countryList : [String] = []
    @State private var selectedCountry = "France"
    
    var body: some View {
        VStack(spacing: 60){
            
            Picker("",selection: $selectedCountry){
                ForEach(countryList, id: \.self){country in
                    Text(country)
                }
            }
            
        }
        .padding()
        .onAppear{
            countryList.append("France")
            countryList.append("Turkey")
            countryList.append("Japan")
            countryList.append("Italy")
        }
    }
}

#Preview {
    PickerView()
}
