//
//  DetailsView.swift
//  Dinamik Listeleme
//
//  Created by Okan Aktas on 19.11.2024.
//

import SwiftUI

struct DetailsView: View {
    var counties = Countries()
    
    var body: some View {
        Text(counties.name!).font(.system(size: 50))
    }
}

#Preview {
    DetailsView()
}
