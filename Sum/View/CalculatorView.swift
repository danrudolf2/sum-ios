//
//  ContentView.swift
//  Sum
//
//  Created by Dan Rudolf on 8/2/23.
//

import SwiftUI

struct CalculatorView: View {
    
    @EnvironmentObject var themeManager: ThemeManager

    var body: some View {
        VStack {
            ThemeToggleView()
            Spacer()
            ZStack {
                KeypadView()
            }
            .padding(.top, 45)
            .padding(.bottom, 25)
            .background(themeManager.current.secondaryColor)
            
            
        }
        .frame(maxWidth: .infinity)
        .background(themeManager.current.primaryColor)
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
            .environmentObject(ThemeManager())
    }
}
