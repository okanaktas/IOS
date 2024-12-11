//
//  AddContactView.swift
//  ContactApp
//
//  Created by Okan Aktas on 11.12.2024.
//

import SwiftUI

struct AddContactView: View {
    
    @State private var contactName = ""
    @State private var contactPhone = ""
    
    func ekranaBas(name : String , phone : String){
        print("Gelen Degerler: \(name) - \(phone)")
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                
                TextField("Name:",text: $contactName)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Phone:",text: $contactPhone)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Add Contact"){
                    ekranaBas(name: contactName , phone: contactPhone)
                }
                .padding()
                .background(.tint)
                .foregroundStyle(.white)
                .cornerRadius(8)
                
            }.navigationTitle("Add Contact")
        }
    }
}

#Preview {
    AddContactView()
}
