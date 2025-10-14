//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 9/10/25.
//

import SwiftUI

struct DetailEditView: View {
    @Binding var scrum: DailyScrum
    @State private var attendeeName = ""
    
    
    let values = [5.0, 10.0, 15.0, 20.0];
    @State private var index: Double = 0
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info".uppercased(with: .autoupdatingCurrent))){
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble,in : 5...20 , step: 5,){
                        Text("Length")
                    }
                    .accessibilityValue("\(scrum.lengthInMinutes) minutes")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                        .accessibilityHidden(true)
                }
                ThemePicker(selection: $scrum.theme)
                                
                
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
                            .accessibilityLabel("Add Attendee")
                    }
                    .disabled(attendeeName.isEmpty)
                    
                }
                
            }
        }
    }
}

#Preview {
    @Previewable @State var scrum = DailyScrum.sampleData[0]
    DetailEditView(scrum: $scrum)
}
