//
//  ContentView.swift
//  ContactApp
//
//  Created by Okan Aktas on 8.12.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var contactList = [Contacts]()
    
    @State private var searchWord = ""
    
    var contact = Contacts()
    
    var body: some View {
        
        NavigationStack {
            List {
                
                
                /*
                 Sol taraf (contact:): Parametre adı (hangi veri bekleniyor?).
                 Sağ taraf (contact): Gönderilen veri (hangi veri gönderiliyor?)
                 */
                ForEach(contactList) { contactItem in
                    NavigationLink(destination: ContactDetails(contact: contactItem)){
                        ContactLineDesign(contact: contactItem)
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
        .searchable(text: $searchWord, prompt: "Search:")
        //Her işlem yaptığımda bana veri getirmesini istiyorum o yüzden onChange kullanıyorum.
        .onChange(of: searchWord) { newValue in
            print("Contact Search: \(newValue)")
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