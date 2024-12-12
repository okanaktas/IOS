//
//  HomeViewViewModel.swift
//  ContactApp
//
//  Created by Okan Aktas on 11.12.2024.
//

import Foundation

class HomeViewViewModel : ObservableObject{
    @Published var contactsList = [Contacts]()
    
    func loadContacts(){
        var list = [Contacts]()
        
        let c1 = Contacts(contact_id: 1,contact_name: "Bugra", contact_phone: "+90 543 1223 43 12")
        
        let c2 = Contacts(contact_id: 2,contact_name: "Okan", contact_phone: "+90 567 5332 12 43")
        
        let c3 = Contacts(contact_id: 3,contact_name: "Berkay", contact_phone: "+90 542 2334 53 42")
        
        list.append(c1)
        list.append(c2)
        list.append(c3)
        
        contactsList = list
    }
    
    func searchContacts(searchText: String){
        print("Search Contact: \(searchText)")
    }
    
    func delete(contact_id : Int){
        print("Delete Contact: \(contact_id)")
    }
}
