//
//  ThemeToggleView.swift
//  Sum
//
//  Created by Dan on 9/4/23.
//

import SwiftUI

struct ThemeToggleView: View {
    @EnvironmentObject var themeManager: ThemeManager
    
    var body: some View {
        HStack {
            Button {
                themeManager.switchTheme()
            } label: {
                Image("ic_sun")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(
                        themeManager.current.selectedTheme == .light ? themeManager.current.enabledIconColor : themeManager.current.disabledIconColor
                    )
            }
            .frame(width: 18, height: 18)
            .padding(EdgeInsets(top: 10,
                                leading: 18,
                                bottom: 10,
                                trailing: 8))
            Button {
                themeManager.switchTheme()
            } label: {
                Image("ic_moon")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(
                        themeManager.current.selectedTheme == .light ? themeManager.current.disabledIconColor : themeManager.current.enabledIconColor
                    )
            }
            .frame(width: 15, height: 15)
            .padding(EdgeInsets(top: 10,
                                leading: 8,
                                bottom: 10,
                                trailing: 18))
            
        }
        .background(themeManager.current.secondaryColor)
        .clipShape(RoundedRectangle(cornerRadius: 12.0))
    }
}

struct ThemeToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeToggleView()
            .previewLayout(.sizeThatFits)
            .environmentObject(ThemeManager())
    }
}
