//
//  ContactDetails.swift
//  ContactApp
//
//  Created by Okan Aktas on 8.12.2024.
//

import SwiftUI

struct ContactDetails: View {
    
    @State var tfName = ""
    @State var tfPhone = ""
    
    var body: some View {
        
        NavigationStack {
            VStack (spacing: 5){
                
                TextField("Contact Name: ",text: $tfName)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Contact Phone: ",text: $tfPhone)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Update"){
                    
                }
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
                .cornerRadius(8)
                
                
            }.navigationTitle("Contact Details")
        }
    }
}

#Preview {
    ContactDetails()
}
