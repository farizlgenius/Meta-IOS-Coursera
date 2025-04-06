//
//  MainView.swift
//  Stack
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        // Task 2 : Add a zstack to your project
        ZStack{
            Color.blue.opacity(0.5).ignoresSafeArea()
            // Task 3 : Add hstack within zstack
            HStack(spacing:8){
                Text("Demo")
                    .scaledToFit()
                    .frame(width: 100,height: 100,alignment: .center)
                // Task 4 : add vstack within hstack
                VStack(spacing:10){
                    Text("Tomato Tortellini,Bottarga and Carbonara")
                        .multilineTextAlignment(.center)
                }
            }
        }
        
    }
}

#Preview {
    MainView()
}
