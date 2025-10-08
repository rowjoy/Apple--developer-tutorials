//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Jamirul Islam on 7/10/25.
//


import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration : Configuration) -> some View{
        HStack {
            configuration.title
            configuration.icon
        }
    }
}



extension LabelStyle where Self == TrailingIconLabelStyle{
    static var trailingIcon : Self {Self()}
}

