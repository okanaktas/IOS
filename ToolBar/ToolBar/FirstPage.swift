//
//  FirstPage.swift
//  ToolBar
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink("Go Second Page") {
                    SecondPage()
                }
            }
            .navigationTitle("Ana Sayfa")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .topBarLeading){
                    Button("Deneme"){
                        
                    }
                }
                
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Ayarlar"){
                        print("Deneme")
                    }
                    
                    Button{
                        print("Car")
                    }label: {
                        Image(systemName: "car")
                    }
                    
                    Button{
                        print("Plus")
                    }label: {
                        Image(systemName: "plus")
                    }
                   
                }
            }
        }
    }
}

#Preview {
    FirstPage()
}
