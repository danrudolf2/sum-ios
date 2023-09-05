//
//  Theme.swift
//  Sum
//
//  Created by Dan Rudolf on 9/4/23.
//

import Foundation
import SwiftUI

enum AppTheme: String {
    case light
    case dark
}

protocol ThemeProtocol {
    var primaryColor: Color { get }
    var secondaryColor: Color { get }
    var enabledIconColor: Color { get }
    var disabledIconColor: Color { get }
    var textGreen: Color { get }
    var textRed: Color { get }
    var buttonBackground: Color { get }
}

class Theme: ThemeProtocol {
    
    var selectedTheme: AppTheme
    
    init(appTheme: AppTheme) {
        self.selectedTheme = appTheme
    }
    
    var primaryColor: Color {
        switch (selectedTheme) {
        case .light:
            return LightTheme.primaryColor
        case .dark:
            return DarkTheme.primaryColor
        }
    }
    
    var secondaryColor: Color {
        switch (selectedTheme) {
        case .light:
            return LightTheme.secondaryColor
        case .dark:
            return DarkTheme.secondaryColor
        }
    }
    
    var enabledIconColor: Color {
        switch (selectedTheme) {
        case .light:
            return LightTheme.enabledButton
        case .dark:
            return DarkTheme.enabledButton
        }
    }
    
    var disabledIconColor: Color {
        switch (selectedTheme) {
        case .light:
            return LightTheme.disabledButton
        case .dark:
            return DarkTheme.disabledButton
        }
    }
    var textGreen: Color {
        switch (selectedTheme) {
        case .light:
            return LightTheme.textGreen
        case .dark:
            return DarkTheme.textGreen
        }
    }
    
    var textRed: Color {
        switch (selectedTheme) {
        case .light:
            return LightTheme.textRed
        case .dark:
            return DarkTheme.textRed
        }
    }
    
    var buttonBackground: Color {
        switch (selectedTheme) {
        case .light:
            return LightTheme.buttonBackground
        case .dark:
            return DarkTheme.buttonBackground
        }
    }
    
    private struct LightTheme {
        static let primaryColor = Color("primaryLight")
        static let secondaryColor = Color("secondaryLight")
        static let enabledButton = Color("enabledButtonLight")
        static let disabledButton = Color("disabledButtonLight")
        static let textGreen = Color("textGreen")
        static let textRed = Color("textRed")
        static let buttonBackground = Color("buttonBackgroundLight")
    }
    
    private struct DarkTheme {
        static let primaryColor = Color("primaryDark")
        static let secondaryColor = Color("secondaryDark")
        static let enabledButton = Color("enabledButtonDark")
        static let disabledButton = Color("disabledButtonDark")
        static let textGreen = Color("textGreen")
        static let textRed = Color("textRed")
        static let buttonBackground = Color("buttonBackgroundDark")
    }
}
