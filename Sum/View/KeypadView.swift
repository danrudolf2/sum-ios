//
//  KeypadView.swift
//  Sum
//
//  Created by Dan Rudolf on 9/4/23.
//

import SwiftUI

struct KeypadView: View {
    @EnvironmentObject var themeManager: ThemeManager
    
    var body: some View {
        Grid(horizontalSpacing: 19, verticalSpacing: 19) {
            GridRow {
                CalculatorButton(type: .valueModifier, value: "AC")
                CalculatorButton(type: .valueModifier, value: "+/-")
                CalculatorButton(type: .valueModifier, value: "%")
                CalculatorButton(type: .operation, value: "÷")
            }
            GridRow {
                CalculatorButton(type: .input, value: "7")
                CalculatorButton(type: .input, value: "8")
                CalculatorButton(type: .input, value: "9")
                CalculatorButton(type: .operation, value: "x")
            }
            GridRow {
                CalculatorButton(type: .input, value: "4")
                CalculatorButton(type: .input, value: "5")
                CalculatorButton(type: .input, value: "6")
                CalculatorButton(type: .operation, value: "-")
            }
            GridRow {
                CalculatorButton(type: .input, value: "1")
                CalculatorButton(type: .input, value: "2")
                CalculatorButton(type: .input, value: "3")
                CalculatorButton(type: .operation, value: "+")
            }
            GridRow {
                CalculatorButton(type: .valueModifier, value: "⤶")
                CalculatorButton(type: .input, value: "0")
                CalculatorButton(type: .input, value: ".")
                CalculatorButton(type: .operation, value: "=")
            }
        }
        .frame(maxWidth: .infinity)
//        .background(themeManager.current.primaryColor)
    }
}

struct KeypadView_Previews: PreviewProvider {
    static var previews: some View {
        KeypadView()
            .environmentObject(ThemeManager())
    }
}
