//
//  MyTabView.swift
//  NavigationExercise
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        // Task 3 : TabView and Labels
        VStack{
            TabView{
                Text("This is the Share View")
                    .tabItem({
                        Label("Share", systemImage: "square.and.arrow.up.fill")
                    })
                Text("This is the Trash View")
                    .tabItem({
                        Label("Trash",systemImage: "trash.fill")
                    })
            }
        }
    }
}

#Preview {
    MyTabView()
}
