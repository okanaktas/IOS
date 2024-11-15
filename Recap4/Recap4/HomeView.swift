//
//  HomeView.swift
//  Recap4
//
//  Created by Okan Aktas on 15.11.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var alert = false
    @State private var actionSheet = false
    var body: some View {
        NavigationStack{
            VStack(spacing: 60){
                Button("Alert"){
                    alert = true
                }
                .alert("Başlık", isPresented: $alert){
                    Button("Tamam",role: .cancel){
                        print("Tamam Seçildi")
                    }
                    Button("İptal",role: .destructive){
                        print("İptal")
                    }
                }message: {
                    Text("içerik")
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
