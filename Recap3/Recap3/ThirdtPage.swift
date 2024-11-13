//
//  ThirdtPage.swift
//  Recap3
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct ThirdtPage: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack(spacing: 80){
            Text("Page 3")
            
            Button("Geri Dön"){
                dismiss()
            }
            .padding()
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    ThirdtPage()
}
