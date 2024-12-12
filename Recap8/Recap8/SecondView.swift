//
//  SecondView.swift
//  Recap8
//
//  Created by Okan Aktas on 27.11.2024.
//

import SwiftUI

struct SecondView: View {
    
    @State var inputValue : User
    
    var body: some View {
        VStack{
            Text(inputValue.name)
        }
        
    }
}
