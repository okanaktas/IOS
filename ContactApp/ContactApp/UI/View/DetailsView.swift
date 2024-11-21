//
//  DetailsView.swift
//  ContactApp
//
//  Created by Okan Aktas on 19.11.2024.
//

import SwiftUI

struct DetailsView: View {
    @State private var name = ""
    @State private var phone = ""
    
    var person = Person()
    
    func update(personId: Int, personName : String, personPhone: String){
        
    }
    
    var body: some View {
        NavigationStack {
            VStack{
                TextField("Person Name: ",text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Person Phone: ",text: $phone)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Update"){
                    update(personId: person.person_id!, personName: person.person_name!, personPhone: person.person_phone!)
                }
                .padding()
                .background(.tint)
                .foregroundStyle(.white)
                .cornerRadius(8)
            }
            .padding()
            .navigationTitle("Contact Details")
        }.onAppear(){
            name = person.person_name!
            phone = person.person_phone!
        }
    }
}

#Preview {
    DetailsView()
}
