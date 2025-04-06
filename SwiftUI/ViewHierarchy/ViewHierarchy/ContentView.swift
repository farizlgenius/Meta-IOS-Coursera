//
//  ContentView.swift
//  ViewHierarchy
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var name:String = ""
    var body: some View {
        VStack{
            TextField("Name",text:$name,prompt: Text("Please enter your name."))
            HStack(spacing:100){
                Button("OK",action: {})
                Button("Cancel",role: .cancel,action: {})
            }
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
