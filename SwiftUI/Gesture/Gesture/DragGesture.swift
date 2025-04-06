//
//  DragGesture.swift
//  Gesture
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct DragGesture: View {
    @State var offsetValue:CGSize = .zero
    var body: some View {
        Image("littlelemon")
            .offset(x:offsetValue.width,y:offsetValue.height)
    }
}

#Preview {
    DragGesture()
}
