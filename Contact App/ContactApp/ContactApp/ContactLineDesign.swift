//
//  ContactLineDesign.swift
//  ContactApp
//
//  Created by Okan Aktas on 9.12.2024.
//

import SwiftUI

struct ContactLineDesign: View {
    
    var contact = Contacts()
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12){
            
            Text(contact.contact_name!)
                .font(.system(size: 24))
            
            Text(contact.contact_phone!)
                .font(.system(size: 16))
                .foregroundStyle(.gray)
        }
        
    }
}
