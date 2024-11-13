//
//  FirstPage.swift
//  Recap3
//
//  Created by Okan Aktas on 13.11.2024.
//

import SwiftUI

struct FirstPage: View {
    @State private var switchStatus : Bool = false
    @State private var switchStatus2 : Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Toggle("Switch",isOn: $switchStatus)
                    .onChange(of: switchStatus){
                        value in
                        print("Switch: \(value)")
                    }
                    .padding()
                    .toggleStyle(SwitchToggleStyle(tint: .red))
                
                
                Toggle("Switch",isOn: $switchStatus2).onChange(of: switchStatus){
                    value in
                    print("Switch: \(value)")
                }
                .padding()
                
                Button("Son Durum Print Ekraninda"){
                    print("Switch: \(switchStatus)")
                    print("Switch 2: \(switchStatus2)")
                }
                
            }
        }
    }
}

#Preview {
    FirstPage()
}
