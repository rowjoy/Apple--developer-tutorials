//
//  Sample.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 7/10/25.
//

import Foundation
import ThemeKit

extension DailyScrum {
    static let sampleData : [DailyScrum] = [
        DailyScrum(
            title: "Design",
            attendees: [
                Attendee(name: "Cathy"),
                Attendee(name: "Daisy"),
                Attendee(name: "Simon"),
                Attendee(name: "Jonathan"),
            ],
            lengthInMinutes: 10,
            theme: .yellow
        ),
        DailyScrum(title: "App Dev",
               attendees: [
                Attendee(name: "Katie"),
                Attendee(name: "Gray"),
                Attendee(name: "Euna"),
                Attendee(name: "Luis"),
                Attendee(name: "Darla"),
                
               ],
               lengthInMinutes: 5,
               theme: .orange
        ),
        DailyScrum(title: "Web Dev",
           attendees: [
            Attendee(name: "Katy"),
            Attendee(name: "Chella"),
            Attendee(name: "Chris"),
            Attendee(name: "Sarah"),
            Attendee(name: "Jenn"),
            Attendee(name: "Aga"),
            Attendee(name: "Chad"),
            Attendee(name: "Karla"),
            Attendee(name: "Lindsey"),
           ],
           lengthInMinutes: 5,
           theme: .poppy
        )
    ]
}
