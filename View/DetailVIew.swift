//
//  DetailVIew.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 8/10/25.
//

import SwiftUI

struct DetailView: View {
    let scrum : DailyScrum
    var body: some View {
        List{
            Section(header: Text("Metting Info".uppercased(
                with: .autoupdatingCurrent))){
                
                NavigationLink(destination: MeetingView()){
                        Label("Start Meeting", systemImage: "timer")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                }
                HStack{
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack{
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text("\(scrum.theme.name)")
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            
            Section (header: Text("Attendees".uppercased())){
                ForEach(scrum.attendees){ attendees in
                    Label(attendees.name, systemImage: "person")
                }
                
            }
        }
        
    }
}

#Preview {
    DetailView(scrum: DailyScrum.sampleData[0])
}
