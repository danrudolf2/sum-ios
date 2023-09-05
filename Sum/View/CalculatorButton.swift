//
//  CalculatorButton.swift
//  Sum
//
//  Created by Dan on 9/4/23.
//

import SwiftUI

struct CalculatorButton: View {
    @EnvironmentObject var themeManager: ThemeManager

    let type: CalculatorAction
    let value: String
    private let customFont = Font.custom("Rubik-Light_Regular", size: 28)
    private let regularFont = Font.system(size: 28, weight: .bold)
    private let excludedFontChars = ["⤶", "+/-", "%", "÷", "-", "+", "="]
    
    var body: some View {
        switch (type) {
        case .input:
            Button(value) {
                
            }
            .frame(width: 70, height: 70)
            .background(themeManager.current.buttonBackground)
            .foregroundColor(themeManager.current.enabledIconColor)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .font(excludedFontChars.contains(value) ? regularFont : customFont)
            
        case .operation:
            Button(value) {
                
            }
            .frame(width: 70, height: 70)
            .background(themeManager.current.buttonBackground)
            .foregroundColor(themeManager.current.textRed)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .font(excludedFontChars.contains(value) ? regularFont : customFont)
            
        case.valueModifier:
            Button(value) {
                
            }
            .frame(width: 70, height: 70)
            .background(themeManager.current.buttonBackground)
            .foregroundColor(themeManager.current.textGreen)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .font(excludedFontChars.contains(value) ? regularFont : customFont)
            
        }
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(type: .input, value: "8")
            .environmentObject(ThemeManager())
            .previewLayout(.sizeThatFits)
    }
}
