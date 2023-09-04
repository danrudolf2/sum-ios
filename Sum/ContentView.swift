//
//  ContentView.swift
//  Sum
//
//  Created by Dan Rudolf on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var themeManager: ThemeManager

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("ChangeTheme") {
                themeManager.switchTheme(newTheme: .dark)
            }
        }
        .background(themeManager.current.primaryColor)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ThemeManager())
    }
}
