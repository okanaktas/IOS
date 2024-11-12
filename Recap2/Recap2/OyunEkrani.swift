//
//  OyunEkrani.swift
//  Recap2
//
//  Created by Okan Aktas on 12.11.2024.
//

import SwiftUI

struct OyunEkrani: View {
    //@Environment(\.dismiss) private var dismiss
    @State private var isShowingExampeView = false
    var body: some View {
        VStack(spacing: 100){
            Button("Bitti"){}
            Button("Geri"){
                isShowingExampeView = true
                //dismiss()
            }
        }
        .sheet(isPresented: $isShowingExampeView){
            AnaSayfa()
        }
        .navigationBarTitle("Oyun")
    }
}

#Preview {
    OyunEkrani()
}
