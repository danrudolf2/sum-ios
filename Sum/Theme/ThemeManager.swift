//
//  AppTheme.swift
//  Sum
//
//  Created by Dan Rudolf on 9/4/23.
//

import Foundation

class ThemeManager: ObservableObject {
    
    @Published var current = Theme(appTheme: .light)
    private var selectedTheme = AppTheme.light
    
    func switchTheme() {
        switch (selectedTheme) {
        case .light:
            current = Theme(appTheme: .dark)
            selectedTheme = AppTheme.dark
        case .dark:
            current = Theme(appTheme: .light)
            selectedTheme = AppTheme.light
        }
    }
}
