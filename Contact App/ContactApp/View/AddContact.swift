//
//  AddContact.swift
//  ContactApp
//
//  Created by Okan Aktas on 8.12.2024.
//

import SwiftUI

struct AddContact: View {
    
    @State var tfName = ""
    @State var tfPhone = ""
    
    func addContact(contactName : String, contactPhone: String){
        print("Contact Added: \(contactName) - \(contactPhone)")
    }
    
    var body: some View {
        
        NavigationStack {
            VStack (spacing: 5){
                
                TextField("Contact Name: ",text: $tfName)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Contact Phone: ",text: $tfPhone)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Add Contact"){
                    addContact(contactName: tfName, contactPhone: tfPhone)
                }
                .padding()
                .background(.green)
                .foregroundStyle(.white)
                .cornerRadius(8)
                
                
            }.navigationTitle("Add Contact")
        }
    }
}

#Preview {
    AddContact()
}
