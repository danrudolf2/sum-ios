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
    
    func switchTheme(newTheme: AppTheme) {
        current = newTheme == .dark ? Theme(appTheme: .dark) : Theme(appTheme: .light)
    }
}
