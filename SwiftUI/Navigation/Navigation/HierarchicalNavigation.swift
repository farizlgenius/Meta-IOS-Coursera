//
//  HierarchicalNavigation.swift
//  Navigation
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct HierarchicalNavigation: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: FlatNavigation(), label: {
                Text("Go to Little Lemon reservation page")
                    .font(.title)
            })
            .navigationTitle("Reservation")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    HierarchicalNavigation()
}
