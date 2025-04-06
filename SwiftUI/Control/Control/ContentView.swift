//
//  ContentView.swift
//  Control
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var isShowing = true // toggle state
    @State private var value = 1 // stepper state
    @State private var size:CGFloat = 0.1 // slider state
    @State private var progress = 0.5 // progress
    @State var selectedDate = Date()
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        return min...max
    }
    var body: some View {
        VStack {
            Text("Current value: \(value)")
            
            // Stepper
            Stepper("Number of guests?",value: $value,in: 1...20)
            
            // Togle
            Toggle(isOn: $isShowing, label: {
                Text("Notification")
            })
            
            // Slider
            Slider(value:$size)
            
            // ProgressView
            ProgressView(value: progress)
            Button("Loading",action: {
                progress += 0.05
            })
            
            // Date Picker
            DatePicker(
                selection:$selectedDate,
                in:dateClosedRange,
                displayedComponents: .date,
                label: {
                    Text("Due Date")
                }
            )
            
            // Label
            Label("Website",systemImage: "globe" )
            
            // Button
            Button(action: {
                print(isShowing)
            },label: { Text("Press me")})
            
            
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
