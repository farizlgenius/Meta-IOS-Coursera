//
//  ListView.swift
//  ScrollViewList
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List{
            Section(header: Text("Important Information"),footer: Text("This is footer")){
                Text("This is shows information about our restaurant pages")
            }
            Image("dessert")
                .resizable()
                .scaledToFit()
            Image("dessert")
                .resizable()
                .scaledToFit()
            Image("dessert")
                .resizable()
                .scaledToFit()
            Image("dessert")
                .resizable()
                .scaledToFit()
        }
        .padding()
        .listStyle(.plain)
    }
}

#Preview {
    ListView()
}
