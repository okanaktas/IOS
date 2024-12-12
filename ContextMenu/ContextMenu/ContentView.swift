//
//  ContentView.swift
//  ContextMenu
//
//  Created by Okan Aktas on 16.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            //Üzerine uzun süre basıldığında çıkan yapı
            Text("Context Menu")
                .contextMenu {
                    Button{
                        print("Resim seçildi")
                    }label:{
                        Label("Resim Çek", systemImage: "camera")
                    }
                    
                    Button{
                        print("Video seçildi")
                    }label:{
                        Label("Video Çek", systemImage: "video")
                    }
                }
            
            
        }
    }
}

#Preview {
    ContentView()
}
