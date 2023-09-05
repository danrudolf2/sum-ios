//
//  ContentView.swift
//  Sum
//
//  Created by Dan Rudolf on 8/2/23.
//

import SwiftUI

struct CalculatorView<T>: View where T: CalculatorViewModelProtocol {
    
    @ObservedObject var viewModel: T
    
    @EnvironmentObject var themeManager: ThemeManager

    var body: some View {
        VStack {
            ThemeToggleView()
            Spacer()
            HStack {
                Spacer()
                Text(String(viewModel.total.stringRepresentation))
                    .padding()
                    .font(Font.custom("Rubik-Light_Regular", size: 52))
                    .lineLimit(1)
            }
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
        CalculatorView(viewModel: CalculatorViewModel())
            .environmentObject(ThemeManager())
    }
}
