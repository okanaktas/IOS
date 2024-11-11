//
//  YemekTarif.swift
//  Recap
//
//  Created by Okan Aktas on 11.11.2024.
//

import SwiftUI

struct YemekTarif: View {
    var body: some View {
        GeometryReader { geometry in
            let ekranGenislik = geometry.size.width
            let ekranYukseklik = geometry.size.height
            
            VStack {
                Image("burger")
                    .resizable()
                    .frame(width: ekranGenislik, height: ekranYukseklik/3)
                
                VStack(alignment: .leading) {
                    Text("Köfte")
                        .font(.system(size: 30))
                        .foregroundColor(.red)
                    HStack{
                        Text("Izgaraya Uygun")
                        Spacer()
                        Text("10 Ocak")
                    }
                }.padding()
                Text("Lezzetli köfte yapımı çok kolay! Sadece birkaç malzeme ile hazırlayabileceğiniz bu pratik köfte tarifini denemelisiniz. Öncelikle, kıymayı geniş bir kaba alın ve üzerine rendelenmiş soğan, bayat ekmek içi, yumurta, tuz, karabiber ve isteğe bağlı baharatları ekleyin. Tüm malzemeleri iyice yoğurun ve köfte şekli verin. Orta ateşte ısıtılmış tavada iki tarafını da kızartarak pişirin. Sıcak servis yaparak afiyetle yiyebilirsiniz!")
                    .padding()
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                HStack(spacing: 0){
                    Button("Beğen"){}
                        .foregroundColor(.black)
                        .frame(width: ekranGenislik/2, height: ekranYukseklik/10)
                        .background(.yellow)
                    Button("Yorum Yap"){}
                        .foregroundColor(.black)
                        .frame(width: ekranGenislik/2, height: ekranYukseklik/10)
                        .background(.orange)
                }
            }
        }
    }
}

#Preview {
    YemekTarif()
}
