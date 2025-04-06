//
//  ParentView.swift
//  ParentChildView
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        //Task 1 : Create Horizontal stack
        HStack{
            // Task 2 : Create Rectangle View
            Rectangle()
                .fill(.blue)
                .frame(width: 50,height: 50)
            // Task 3 : Creat textview
            Text("Rectangle One")
                .foregroundColor(.white)
                .padding(20)
                .background(Color.yellow)
            // Task 4 : new rectangle
            Rectangle()
                .fill(.red)
                .frame(width: 100,height: 30)
        }
    }
}

#Preview {
    ParentView()
}
