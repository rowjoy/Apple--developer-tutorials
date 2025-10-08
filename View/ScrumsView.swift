//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 8/10/25.
//

import SwiftUI

struct ScrumsView: View {
    var scrum: [DailyScrum]
    var body: some View {
        List (scrum) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    ScrumsView(scrum: DailyScrum.sampleData)
}
