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
                Image("icon_sun")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(
                        themeManager.current.selectedTheme == .light ? themeManager.current.enabledIconColor : themeManager.current.disabledIconColor
                    )
            }
            .frame(width: 20, height: 20)
            .padding(EdgeInsets(top: 10,
                                leading: 10,
                                bottom: 10,
                                trailing: 5))
            Button {
                themeManager.switchTheme()
            } label: {
                Image("icon_moon")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(
                        themeManager.current.selectedTheme == .light ? themeManager.current.disabledIconColor : themeManager.current.enabledIconColor
                    )
            }
            .frame(width: 19, height: 19)
            .padding(EdgeInsets(top: 10,
                                leading: 5,
                                bottom: 10,
                                trailing: 10))
            
        }
        .background(themeManager.current.secondaryColor)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}

struct ThemeToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeToggleView()
            .previewLayout(.sizeThatFits)
            .environmentObject(ThemeManager())
    }
}
