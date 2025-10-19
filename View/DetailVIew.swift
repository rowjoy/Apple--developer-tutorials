//
//  DetailVIew.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 8/10/25.
//

import SwiftUI

struct DetailView: View {
    @Binding var scrum : DailyScrum
    @State private var editingScrum = DailyScrum.emptyScrum
    @State private var isPresentingEditView = false
    var body: some View {
        List{
            Section(header: Text("Metting Info".uppercased(
                with: .autoupdatingCurrent))){
                
                NavigationLink(destination: MeetingView(scrum: $scrum)){
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
        .navigationTitle(scrum.title)
        .toolbar{
            Button("Edit"){
                isPresentingEditView = true
                editingScrum = scrum
            }
        }
        .sheet(isPresented: $isPresentingEditView){
            NavigationStack{
                DetailEditView(scrum: $editingScrum)
                    .navigationTitle(scrum.title)
                    .toolbar {
                        ToolbarItem(placement:.cancellationAction){
                            Button ("Cancel"){
                                isPresentingEditView = false
                            }
                        }
                        
                        ToolbarItem(placement: .confirmationAction){
                            Button ("Done"){
                                isPresentingEditView = false
                                scrum = editingScrum
                            }
                        }
                    }
            }
        }
        
    }
}

#Preview {
    @Previewable @State var scrum = DailyScrum.sampleData[0]
    NavigationStack {
        DetailView(scrum: $scrum)
    }
}
