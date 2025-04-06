//
//  ListNavigation.swift
//  ScrollViewList
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct ListNavigation: View {
    let desserts = ["Apple Pie","Carrot Cake","Cheesecake","Ice Cream"]
    var body: some View {
        List{
            ForEach(desserts,id:\.self){dessert in
                NavigationLink(destination: Color.red, label: {
                    Text(dessert).font(.title)
                })
            }
        }
    }
}

#Preview {
    ListNavigation()
}
