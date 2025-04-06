//
//  TapGesture.swift
//  Gesture
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct TapGesture: View {
    var body: some View {
        Text("Tap for reservation!")
            .onTapGesture(count: 2){
                print("Text tapped!")
            }
            .onLongPressGesture(minimumDuration: 3,maximumDistance: 15,perform: {
                print("User wants to change their Little Lemon reservation!")
            },onPressingChanged: {
                state in print(state)
            })
    }
}

#Preview {
    TapGesture()
}
