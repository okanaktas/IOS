//
//  ContentView.swift
//  ContactApp
//
//  Created by Okan Aktas on 11.12.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var contactsList = [Contacts]()
    
    @State private var searchText = ""
    
    //Hangi degeri sildiysek onun degerini veriyor
    func delete(at offsets : IndexSet){
        //Bilgi amaçlı kullandığımız yapı - sildiğimiz kisi nesnesini veriyor
        let contact = contactsList[offsets.first!]
        //Gerçekten silinen yer
        contactsList.remove(at: offsets.first!)
        
        //silme işlemleri id ile gerçekleşir
        print("Delete Contact: \(contact.contact_id!)")
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    ForEach(contactsList){i in
                        NavigationLink(destination: DetailsView(contact : i)){
                            
                            VStack(alignment: .leading, spacing: 16){
                                
                                Text("\(i.contact_name!)")
                                    .font(.system(size: 22))
                                    .foregroundColor(.primary)
                                
                                Text("\(i.contact_phone!)")
                                    .font(.system(size: 18))
                                    .foregroundColor(.gray)
                                
                            }
                        }
                        
                    }
                }
                .onDelete(perform: delete)
            }
            .navigationTitle("Contacts")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink(destination: AddContactView()){
                        Image(systemName: "plus")
                    }
                }
            }
            
            .onAppear{
                var list = [Contacts]()
                
                var c1 = Contacts(contact_id: 1,contact_name: "Bugra", contact_phone: "+90 543 1223 43 12")
                
                var c2 = Contacts(contact_id: 2,contact_name: "Okan", contact_phone: "+90 567 5332 12 43")
                
                var c3 = Contacts(contact_id: 3,contact_name: "Berkay", contact_phone: "+90 542 2334 53 42")
                
                list.append(c1)
                list.append(c2)
                list.append(c3)
                
                contactsList = list
            }
            .searchable(text: $searchText, prompt: "Searh Contact")
            .onChange(of: searchText){
                print("Search: \(searchText)")
            }
        }
    }
}

#Preview {
    HomeView()
}
