//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 14/10/25.
//

import SwiftUI
import ThemeKit

struct ThemeView: View {
    let theme: Theme
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .bubblegum)
}
