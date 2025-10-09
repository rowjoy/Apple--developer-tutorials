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
        NavigationStack {
            List (scrum) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)){
                    CardView(scrum: scrum)
                       
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrum")
            .toolbar{
                Button(action: {
                    
                }){
                    Image(systemName: "plus")
                }
                .accessibilityLabel(Text("Add New Scrum"))
            }
            
        }

    }
}

#Preview {
    ScrumsView(scrum: DailyScrum.sampleData)
}
