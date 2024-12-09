//
//  ContentView.swift
//  ContactApp
//
//  Created by Okan Aktas on 8.12.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var contactList = [Contacts]()
    
    var contact = Contacts()
    
    var body: some View {
        NavigationStack {
            List {
                
                ForEach(contactList) { contact in
                    NavigationLink(destination: ContactDetails(contact: contact)){
                        ContactLineDesign(contact: contact)
                    }
                }
                
            }
            .navigationTitle("Contact")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: AddContact()) {
                        Image(systemName: "plus")
                    }
                }
            }
    
            
            
        }
        .onAppear() {
            var list = [Contacts]()
            
            let c1 = Contacts(contact_id: 1, contact_name: "Okan", contact_phone: "543 8711 67 84")
            
            let c2 = Contacts(contact_id: 2, contact_name: "Ali", contact_phone: "544 3241 12 56")
            
            let c3 = Contacts(contact_id: 3, contact_name: "Ahmet", contact_phone: "545 4657 11 53")
            
            list.append(c1)
            list.append(c2)
            list.append(c3)
            
            self.contactList = list
        }
    }
}

#Preview {
    HomeView()
}
