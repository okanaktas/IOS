//
//  Images.swift
//  Gorunumler
//
//  Created by Okan Aktas on 27.11.2024.
//

import SwiftUI

struct Images: View {
    
    var image: Image
    
    var body: some View {
        
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.height * 0.25)
            .clipShape(Circle())
            .overlay(Circle().stroke(.white,lineWidth: 5))
            .shadow(radius: 20)
        
    }
}
