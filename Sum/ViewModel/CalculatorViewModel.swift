//
//  CalculatorViewModel.swift
//  Sum
//
//  Created by Dan on 9/4/23.
//

import Foundation

@MainActor protocol CalculatorViewModelProtocol: ObservableObject {
    var total: Double { get }
}

class CalculatorViewModel: CalculatorViewModelProtocol {
    @Published var total: Double = 123123123123
}

extension Double {
    var stringRepresentation: String {
        var result = "Err"
        let max = 999999999999.0
        let numberFormatter = NumberFormatter()
        
        if self.truncatingRemainder(dividingBy: 1) == 0 {
            result = String(format: "%.0f", self)
        }
        
        numberFormatter.numberStyle = self > max ? .scientific : .decimal
        numberFormatter.maximumFractionDigits = 9
        result = numberFormatter.string(from: NSNumber(value: self)) ?? "Err"
        
        return result
    }
}
