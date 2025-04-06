//
//  TabbedNavigation.swift
//  Navigation
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct TabbedNavigation: View {
    var body: some View {
        TabView{
            Text("Home Page")
                .font(.title)
                .tabItem({
                    Label("Home",systemImage: "house")
                })
                .badge(1)
            Text("Menu Page")
                .font(.title)
                .tabItem({
                    Label("Menu",systemImage: "menucard")
                })
        }
    }
}

#Preview {
    TabbedNavigation()
}
