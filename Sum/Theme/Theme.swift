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
    
    private struct LightTheme {
        static let primaryColor = Color("primaryLight")
        static let secondaryColor = Color("secondaryLight")
        static let enabledButton = Color("enabledButtonLight")
        static let disabledButton = Color("disabledButtonLight")
    }
    
    private struct DarkTheme {
        static let primaryColor = Color("primaryDark")
        static let secondaryColor = Color("secondaryDark")
        static let enabledButton = Color("enabledButtonDark")
        static let disabledButton = Color("disabledButtonDark")
    }
}
