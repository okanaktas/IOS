//
//  ContactRow.swift
//  ContactApp
//
//  Created by Okan Aktas on 11.12.2024.
//

import SwiftUI
struct ContactRow: View {
    
    var contact = Contacts()
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            Text("\(contact.contact_name!)")
                .font(.system(size: 22))
                .foregroundColor(.primary)
            Text("\(contact.contact_phone!)")
                .font(.system(size: 18))
                .foregroundColor(.gray)
        }
        
    }
}
