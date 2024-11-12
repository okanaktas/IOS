//
//  SecondPage.swift
//  dismiss_and_isPresented
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct SecondPage: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack(spacing: 50){
            Text("Second Page")
            Button("Go First Page"){
                dismiss()
            }
            .padding()
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}

#Preview {
    SecondPage()
}
