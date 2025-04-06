//
//  ContentView.swift
//  Frame
//
//  Created by Far-iz Lengha on 26/10/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.green.opacity(0.5).ignoresSafeArea()
            HStack{
                Image("littlelemon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 200,alignment: .center)
                VStack(spacing: 10){
                    Text("Little Lemon")
                        .font(.title)
                    Text("Stacj in SeiftUI - ZStack, HStach, VStack")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    
                }
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
