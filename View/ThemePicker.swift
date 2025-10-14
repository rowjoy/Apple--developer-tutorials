//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 14/10/25.
//

import SwiftUI
import ThemeKit

struct ThemePicker: View {
    @Binding var selection : Theme
    var body: some View {
        Picker ("Theme", selection: $selection){
            ForEach(Theme.allCases){ theme in
                ThemeView(theme: theme).tag(theme)
            }
        }
       .pickerStyle(.navigationLink)
    }
}

#Preview {
    @Previewable @State var theme = Theme.buttercup
    ThemePicker(selection: $theme)
}
