/*
 See LICENSE folder for this sample’s licensing information.
 */

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrum: DailyScrum.sampleData)
        }
    }
}



//https://developer.apple.com/tutorials/app-dev-training/displaying-data-in-a-list


