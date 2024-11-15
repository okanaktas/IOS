//
//  FinishView.swift
//  Recap4
//
//  Created by Okan Aktas on 14.11.2024.
//

import SwiftUI

struct FinishView: View {
    var sonuc = ""
    var body: some View {
        VStack(spacing: 60) {
            Text(sonuc)
            Text("Finished Game ! 🎉")
        }
    }
}

#Preview {
    FinishView()
}
