//
//  GoPage.swift
//  Navigator_Stack
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct GoPage: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack{
            Button("Go Back!"){
                dismiss()
            }
            .padding()
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(8)
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    GoPage()
}
