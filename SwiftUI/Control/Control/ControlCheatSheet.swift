//
//  ControlCheatSheet.swift
//  Control
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct ControlCheatSheet: View {
    
    @State var isShowing = true
    
    @State private var value = 1
    
    @State private var size = 0.1
    
    @State var selectedDate = Date()
    var dateClosedRange:ClosedRange<Date>{
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .month, value: 1, to: Date())!
        return min...max
    }
    
    var body: some View {
        
//        //Button
//        Button(role:.destructive){
//            print("Deleting...")
//        } label: {
//            HStack{
//                Image(systemName: "trash")
//                Text("Delete")
//            }
//        }
//        
//        //Toggle
//        Toggle(isOn: $isShowing, label: {
//            Text("Hello world")
//                .font(.title)
//        })
//        
//        //Stepper
        NavigationView(content: {
            VStack(content: {
                Text("Current value: \(value)")
                Stepper("Number of guests",value: $value,in:1...20)
            })
            .padding()
        })
        .navigationTitle("Reservation form")
        
//        //Slider
//        VStack{
//            Text("Little Lemon").font(.system(size: size * 50))
//            Slider(value: $size)
//        }
//        
        //DatePicker
//        NavigationView{
//            Form{
//                Section{
//                    DatePicker(selection: $selectedDate, in: dateClosedRange, displayedComponents: .date, label: {
//                        Text("Due Date")
//                    })
//                }
//            }
//        }
        
        //Label
        Label("Menu",systemImage: "fork.knife")
            .labelStyle(.titleAndIcon)
    }
}

#Preview {
    ControlCheatSheet()
}
