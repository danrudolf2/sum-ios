//
//  SumApp.swift
//  Sum
//
//  Created by Dan Rudolf on 8/2/23.
//

import SwiftUI

@main
struct SumApp: App {
    private let themeManager = ThemeManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeManager)
        }
    }
}
