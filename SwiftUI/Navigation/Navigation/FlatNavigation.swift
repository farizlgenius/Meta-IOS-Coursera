//
//  FlatNavigation.swift
//  Navigation
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct FlatNavigation: View {
    var body: some View {
        TabView{
            Text("Make reservation")
                .tabItem({
                    Label("Reservation",systemImage: "note.text")
                })
            Text("Contact us")
                .tabItem({
                    Label("Contact",systemImage: "phone")
                })
        }
    }
}

#Preview {
    FlatNavigation()
}
