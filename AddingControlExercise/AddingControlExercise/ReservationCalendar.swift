//
//  ReservationCalendar.swift
//  AddingControlExercise
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct ReservationCalendar: View {
    
    
    @State var selectedDate = Date()
    
    
    var body: some View {
        // Task 2 : Create DatePicker
        Form{
            HStack{
                DatePicker(selection: $selectedDate,in:Date()...,displayedComponents: [.date,.hourAndMinute]){}
                // Task 3 : Add a Donr button
                Button(action: {print("do something")}){
                    HStack{
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }.padding(20)
            }
            Text("Date is \(selectedDate.formatted(date: .long, time: .complete))")
        }
    }
}

#Preview {
    ReservationCalendar()
}
