//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 8/10/25.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    var body: some View {
        NavigationStack {
            List ($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)){
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
    @Previewable @State var scrums = DailyScrum.sampleData
    ScrumsView(scrums: $scrums)
}
