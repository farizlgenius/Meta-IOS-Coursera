//
//  GestureRecognizer.swift
//  Gesture
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct GestureRecognizer: View {
    // Task 1 : Create rounded rectangle button
    @State var flag:Bool = true
    var body: some View {
        Text("Tap Me")
            .font(.title)
            .foregroundColor(.white)
            .padding(15)
            .background( flag ?Color.green:Color.yellow)
            .onTapGesture {
                flag.toggle()
            }
    }
}

#Preview {
    GestureRecognizer()
}
