/*
 See LICENSE folder for this sample’s licensing information.
 */

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}



//  https://developer.apple.com/tutorials/app-dev-training/displaying-data-in-a-list
// Day - 2 https://developer.apple.com/tutorials/app-dev-training/creating-a-navigation-hierarchy
// Day - 3 https://developer.apple.com/tutorials/app-dev-training/creating-the-edit-view
// Say - 4 https://developer.apple.com/tutorials/app-dev-training/creating-the-edit-view
// 5 - https://developer.apple.com/tutorials/app-dev-training/passing-data-with-bindings

// 6 - https://developer.apple.com/tutorials/app-dev-training/passing-data-with-bindings







