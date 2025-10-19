//
//  ScrumProgressViewStyle.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 19/10/25.
//

import SwiftUI
import ThemeKit

struct ScrumProgressViewStyle: ProgressViewStyle {
    var theme: Theme   // You can replace this with your own color model

    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            // Background track
            RoundedRectangle(cornerRadius: 10)
                .fill(theme.mainColor.opacity(0.2))
                .frame(height: 8)

            // Foreground progress bar
            RoundedRectangle(cornerRadius: 10)
                .fill(theme.mainColor)
                .frame(width: CGFloat(configuration.fractionCompleted ?? 0) * 200, height: 8)
                .animation(.easeInOut(duration: 0.3), value: configuration.fractionCompleted)
        }
        .accessibilityLabel("Progress")
        .accessibilityValue(Text("\((configuration.fractionCompleted ?? 0) * 100, specifier: "%.0f") percent"))
    }
}

