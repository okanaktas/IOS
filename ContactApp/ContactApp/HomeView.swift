//
//  ContentView.swift
//  ContactApp
//
//  Created by Okan Aktas on 19.11.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var personList = [Person]()
    @State private var searchText = ""
    var person = Person()
    
    func delete(at offsets: IndexSet){
        let person = personList[offsets.first!]
        personList.remove(at: offsets.first!)
        print("Deleted person: \(person.person_name!)")
    }
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(personList){person in
                    NavigationLink(destination: DetailsView(person: person)){
                        VStack(alignment: .leading,spacing: 16){
                            Text(person.person_name!).font(.system(size: 25))
                            Text(person.person_phone!).font(.system(size: 20)).foregroundStyle(.gray)
                        }
                    }
                }.onDelete(perform: delete)
            }
            .navigationTitle("Contacts")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink(destination: AddContactView()){
                        Image(systemName: "plus")
                    }
                }
            }
        }.onAppear(){
            var list = [Person]()
            let c1 = Person(person_id : 1, person_name: "Okan Aktas", person_phone: "+90 542 123 456")
            
            let c2 = Person(person_id : 2, person_name: "Berkay Aktas", person_phone: "+90 542 123 456")
            
            let c3 = Person(person_id : 3, person_name: "Filiz Aktas", person_phone: "+90 542 123 456")
            
            list.append(c1)
            list.append(c2)
            list.append(c3)
            
            self.personList = list
        }
        .searchable(text: $searchText, prompt: "Search")
        .onChange(of: searchText){_,s in
            print("Search contact: \(s)")
        }
    }
}

#Preview {
    HomeView()
}
