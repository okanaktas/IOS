//
//  IlhamVer.swift
//  Recap
//
//  Created by Okan Aktas on 9.11.2024.
//

import SwiftUI

struct IlhamVer: View {
    var body: some View {
        VStack (spacing: 20){
            VStack{
                Image("stevejobs")
                Text("Steve Jobs")
                    .font(.system(size: 22))
                    .foregroundColor(.black)
                    .bold()
            }
            
            Text("Lorem Ipsum, matbaacılık ve dizgi endüstrisinde kullanılan, anlamı olmayan bir yer tutucu metindir. 1500'lerden bu yana kullanılmakta olan standart bir metin haline gelmiştir. Klasik fadesi, MÖ 45 yılında yazılmış olan Cicero'nun adlı eserinden bir pasajın değiştirilmiş bir versiyonudur. ")
                .multilineTextAlignment(.center)
                .padding()
            
            Button("İlham Ver") {
                
            }.foregroundColor(.white)
                .padding()
                .background(.black)
                .cornerRadius(8)
        }
    }
}

#Preview {
    IlhamVer()
}
