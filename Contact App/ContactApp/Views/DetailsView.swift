//
//  DetailsView.swift
//  ContactApp
//
//  Created by Okan Aktas on 11.12.2024.
//

import SwiftUI

struct DetailsView: View {
    
    @State private var contactName = ""
    @State private var contactPhone = ""
    
    var contact = Contacts()
    
    func update(id : Int, name : String , phone : String){
        print("Güncellenen degerler: \(name) - \(phone)")
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
                
                Button("Update"){
                    update(id: contact.contact_id!,name: contactName , phone: contactPhone)
                }
                .padding()
                .background(.green)
                .foregroundStyle(.white)
                .cornerRadius(8)
                
            }.navigationTitle("Details Contact")
                .onAppear{
                    contactName = contact.contact_name!
                    contactPhone = contact.contact_phone!
                }
        }
    }
}

#Preview {
    DetailsView()
}
