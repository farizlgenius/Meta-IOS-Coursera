//
//  Reservationform.swift
//  LittleLemonReservationForm
//
//  Created by Far-iz Lengha on 26/10/2567 BE.
//

import SwiftUI

struct Reservationform: View {
    @State var customerName:String = ""
    var body: some View {
        // Task 1 : Add form element
        Form{
            // Task 2 : Add Text Field and create controlling variable
            // Task 5 : Detect when TextField start and end editing
            TextField("Type Your Name",text:$customerName,onEditingChanged: {status in print(status)})
            // Task 3 : Add modifier for detect change on textField
                .onChange(of: customerName, perform: {
                    newValue in print(newValue)
                })
            // Task 4 : Detect when user press submit
                .onSubmit {
                    print("Submitted")
                }
        }
    }
}

#Preview {
    Reservationform()
}
