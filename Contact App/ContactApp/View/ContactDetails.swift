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
    
    var contact = Contacts()
    
    func update(contactID : Int, contactName : String, contactPhone: String){
        print("Update: \(contactID) - \(contactName) - \(contactPhone)")
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
                
                Button("Update"){
                    update(contactID: contact.contact_id!, contactName: tfName, contactPhone: tfPhone)
                }
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
                .cornerRadius(8)
                
                
            }.navigationTitle("Contact Details")
        }.onAppear(){
            self.tfName = self.contact.contact_name ?? "No Value"
            self.tfPhone = self.contact.contact_phone ?? "No Value"
        }
    }
}

#Preview {
    ContactDetails()
}
