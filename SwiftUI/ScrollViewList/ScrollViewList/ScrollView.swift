//
//  ScrollView.swift
//  ScrollViewList
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct ScrollView: View {
    var body: some View {
        SwiftUI.ScrollView{
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
    }
}

#Preview {
    ScrollView()
}
