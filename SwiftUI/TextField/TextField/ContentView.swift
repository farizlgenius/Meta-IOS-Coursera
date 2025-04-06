//
//  ContentView.swift
//  TextField
//
//  Created by Far-iz Lengha on 26/10/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var inputValue:String = ""
    var body: some View {
//       Label("Ligtning",systemImage: "bolt.fill")
//       Text("Little Lemon Restaurant")
//            .font(.title)
//            .foregroundColor(.gray)
//            .background(Color.black)
//            .padding()
//            .background(Color.green)
        TextField("Type your Name",text: $inputValue,onEditingChanged: {
            status in print(status)
        })
            .padding()
            .onChange(of: inputValue) { newValue in
                print(inputValue)
                        }
            .onSubmit {
                print("Submitted")
            }
            .padding()
            
    }
}

#Preview {
    ContentView()
}
