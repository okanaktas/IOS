//
//  ContentView.swift
//  ContactApp
//
//  Created by Okan Aktas on 11.12.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var contacts = [Contacts]()
    
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    ForEach(contacts){contact in
                        NavigationLink(destination: DetailsView(contact : contact)){
                            
                            VStack(alignment: .leading, spacing: 16){
                                
                                Text("\(contact.contact_name!)")
                                    .font(.system(size: 22))
                                    .foregroundColor(.primary)
                                
                                Text("\(contact.contact_phone!)")
                                    .font(.system(size: 18))
                                    .foregroundColor(.gray)
                            
                            }
                        }
                        
                    }
                }
            }
            .navigationTitle("Contacts")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink(destination: AddContactView()){
                        Image(systemName: "plus")
                    }
                }
            }
        }.onAppear{
            var list = [Contacts]()
            
            var c1 = Contacts(contact_id: 1,contact_name: "Bugra", contact_phone: "+90 543 1223 43 12")
            
            var c2 = Contacts(contact_id: 2,contact_name: "Okan", contact_phone: "+90 567 5332 12 43")
            
            var c3 = Contacts(contact_id: 3,contact_name: "Berkay", contact_phone: "+90 542 2334 53 42")
            
            list.append(c1)
            list.append(c2)
            list.append(c3)
            
            contacts = list
        }
    }
}

#Preview {
    HomeView()
}
