//
//  ContentView.swift
//  NavigationExercise
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Task 2 : Create NavifationView
        NavigationView{
            VStack{
                Text("Exercise 1")
                    .font(.title)
                NavigationLink("Do something", destination: EmptyView())
            }
            .navigationTitle("Little Lemon")
        }
        
    }
}

#Preview {
    ContentView()
}
