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
    @Published var total: Double = 123456789123456789
}

extension Double {
    var stringRepresentation: String {
        var result = "Err"
        if self.truncatingRemainder(dividingBy: 1) == 0 {
            result = String(format: "%.0f", self)
        }
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        result = numberFormatter.string(from: NSNumber(value: self)) ?? "Err"
        return result
    }
}
