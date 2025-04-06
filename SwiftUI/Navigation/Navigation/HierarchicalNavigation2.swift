//
//  HierarchicalNavigation2.swift
//  Navigation
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct HierarchicalNavigation2: View {
    var elements = ["Bistro Menu","Takeaway menu"]
    let color = [Color.green,Color.yellow]
    var body: some View {
        NavigationView{
            VStack{
                Text("Select your preferred memu:")
                    .font(.title)
                
                ForEach(elements.indices,id:\.self){
                    index in
                    NavigationLink(destination: color[index], label: {
                        Text(elements[index])
                            .font(.title)
                            .foregroundColor(color[index])
                    })
                }
                
//                NavigationLink(destination: Color.green, label: {
//                    Text("Bistro menu")
//                        .font(.title)
//                        .foregroundColor(.green)
//                })
//                
//                NavigationLink(destination: Color.yellow, label: {
//                    Text("Takeaway menu")
//                        .font(.title)
//                        .foregroundColor(.yellow)
//                })
            }
        }
        .navigationTitle("Little Lemon")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HierarchicalNavigation2()
}
