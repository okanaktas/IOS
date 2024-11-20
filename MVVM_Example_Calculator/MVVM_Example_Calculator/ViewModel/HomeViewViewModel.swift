//
//  HomeViewViewModel.swift
//  MVVM_Example_Calculator
//
//  Created by Okan Aktas on 21.11.2024.
//

import Foundation


class HomeViewViewModel : ObservableObject {
    @Published var result: String = "0.0"
    
    func sum(firstValue: String, secondValue: String){
        if let firstValue = Double(firstValue), let secondValue = Double(secondValue){
            let sum = firstValue + secondValue
            result = String(sum)
        }
    }
    
    func multiply(firstValue: String, secondValue: String){
        if let firstValue = Double(firstValue), let secondValue = Double(secondValue){
            let multiply = firstValue * secondValue
            result = String(multiply)
        }
    }
    
}
