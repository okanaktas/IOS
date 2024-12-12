//
//  ContentView.swift
//  ActionSheet
//
//  Created by Okan Aktas on 16.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var actionSheet = false
    var body: some View {
        VStack {
            
            Button("Action Sheet"){
                actionSheet = true
            }
            .padding()
            .background(.tint)
            .foregroundStyle(.white)
            .cornerRadius(8)
            .actionSheet(isPresented: $actionSheet){
                ActionSheet(
                    title: Text("Baslik"),
                    message: Text("İçerik"),
                    buttons: [
                        .default(Text("Tamam"), action: {
                            print("Tamam seçildi")
                        }),
                        .cancel(Text("İptal"), action: {
                            print("İptal seçildi")
                        })
                ])
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
