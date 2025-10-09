//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 7/10/25.
//

import Foundation
import ThemeKit


struct DailyScrum : Identifiable {
    let id: UUID
    var title : String
    var attendees : [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble : Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [Attendee], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}


extension DailyScrum {
    struct Attendee : Identifiable {
        let id : UUID
        var name : String
        
        init(id: UUID = UUID(), name : String){
            self.id = id
            self.name = name
        }
    }
    
    
    static var emptyScrum : DailyScrum {
        DailyScrum(
            title: "",
            attendees: [],
            lengthInMinutes: 5,
            theme: .sky
        )
    }
}


