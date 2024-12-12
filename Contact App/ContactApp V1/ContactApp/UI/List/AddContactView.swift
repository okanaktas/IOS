//
//  RegisterView.swift
//  ContactApp
//
//  Created by Okan Aktas on 19.11.2024.
//

import SwiftUI

struct AddContactView: View {
    @State private var name = ""
    @State private var phone = ""
    
    func save(personName : String, personPhone: String){
        
    }
    
    var body: some View {
        NavigationStack {
            VStack{
                TextField("Person Name: ",text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Person Phone: ",text: $phone)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Add Contact"){
                    save(personName: name, personPhone: phone)
                }
                .padding()
                .background(.green)
                .foregroundStyle(.white)
                .cornerRadius(8)
            }
            .padding()
            .navigationTitle("Add Contact")
        }
    }
    
}

#Preview {
    AddContactView()
}
