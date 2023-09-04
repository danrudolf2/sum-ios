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
}

class Theme: ThemeProtocol {
    private var selectedTheme: AppTheme
    
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
    
    private struct LightTheme {
        static let primaryColor = Color("backgroundLight")
    }
    
    private struct DarkTheme {
        static let primaryColor = Color("backgroundDark")
    }
}
