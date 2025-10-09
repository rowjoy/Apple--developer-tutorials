//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 9/10/25.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum: DailyScrum = .emptyScrum
    @State private var attendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info".uppercased(with: .autoupdatingCurrent))){
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble,in : 5...30 , step: 1){
                        Text("Length")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
            
            Section (header: Text("Attendees".uppercased(with: .autoupdatingCurrent))){
                
                ForEach (scrum.attendees){ attendee in
                    Text(attendee.name)
                }
                .onDelete{ indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
                
                HStack{
                    TextField("New Attendee", text: $attendeeName)
                    Button (action : {
                        withAnimation{
                            let attendees = DailyScrum.Attendee(
                                name: attendeeName
                            )
                            scrum.attendees.append(attendees)
                            attendeeName = ""
                        }
                    }){
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(attendeeName.isEmpty)
                    
                }
                
            }
        }
    }
}

#Preview {
    DetailEditView()
}
