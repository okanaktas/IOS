//
//  ContentView.swift
//  ContactApp
//
//  Created by Okan Aktas on 11.12.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    
    
    @ObservedObject var viewModel = HomeViewViewModel()
    
    //Hangi degeri sildiysek onun degerini veriyor
    func delete(at offsets : IndexSet){
        //Bilgi amaçlı kullandığımız yapı - sildiğimiz kisi nesnesini veriyor
        let contact = viewModel.contactsList[offsets.first!]
        //Gerçekten silinen yer
        viewModel.contactsList.remove(at: offsets.first!)
        
        //silme işlemleri id ile gerçekleşir
        viewModel.delete(contact_id: contact.contact_id!)
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    ForEach(viewModel.contactsList){i in
                        NavigationLink(destination: DetailsView(contact : i)){
                            ContactRow(contact: i)
                        }
                    }.onDelete(perform: delete)
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
            
            .onAppear{
                viewModel.loadContacts()
            }
            .searchable(text: $searchText, prompt: "Searh Contact")
            .onChange(of: searchText){_, i in
                viewModel.searchContacts(searchText: i)
            }
        }
    }
}

#Preview {
    HomeView()
}
