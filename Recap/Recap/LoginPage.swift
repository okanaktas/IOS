//
//  LoginPage.swift
//  Recap
//
//  Created by Okan Aktas on 9.11.2024.
//

import SwiftUI

struct LoginPage: View {
    @State private var tfKullaniciAdi=""
    @State private var tfSifre=""
    var body: some View {
        VStack{
            Image("enter")
                .resizable()
                .frame(width: 100, height: 100)
            TextField("Kullanici adi: ",text: $tfKullaniciAdi)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Şifre: ",text: $tfSifre)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Login"){}
                .padding()
                .frame(width: 150, height: 50)
                .background(.green)
                .cornerRadius(8)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    LoginPage()
}
