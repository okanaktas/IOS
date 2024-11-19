//
//  ContentView.swift
//  Dinamik Listeleme
//
//  Created by Okan Aktas on 19.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State var countryList = [Countries]()
    
    var body: some View {
        
        NavigationStack {
            List{
                ForEach(countryList){i in
                    CountriesItem(country : i)
                        .onTapGesture {
                            print("\(i.name!) seçildi")
                        }
                }.onDelete(perform: delete)
            }
            //.listStyle(PlainListStyle())
            .navigationTitle("Countries")
        }.onAppear() {
            var list = [Countries]()
            let c1 = Countries(name: "Turkey")
            let c2 = Countries(name: "France")
            let c3 = Countries(name: "Germany")
            let c4 = Countries(name: "Italy")
            list.append(c1)
            list.append(c2)
            list.append(c3)
            list.append(c4)
            
            countryList = list
        }
    }
    
    
    func delete(at offsets: IndexSet){
        let countries = countryList[offsets.first!]
        print("\(countries.name!) deleted")
        countryList.remove(at: offsets.first!)
    }
}



struct CountriesItem : View {
    var country  = Countries()
    
    var body : some View {
        HStack {
            Text(country.name!)
            Spacer()
            Text("Seç")
                .foregroundStyle(.red)
                .onTapGesture {
                    print("Text: \(country.name!) seçildi!")
                }
        }
    }
}

#Preview {
    ContentView()
}
