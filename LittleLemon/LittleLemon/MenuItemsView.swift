//
//  ContentView.swift
//  LittleLemon
//
//  Created by Far-iz Lengha on 26/10/2567 BE.
//

import SwiftUI

struct MenuItemsView: View {
    //@State var showLogo = true
    @ObservedObject var myClass = MyClass()
    var body: some View {
        VStack{
            if myClass.showLogo {
                //LittleLemonLogo(bindingVariable: $showLogo)
                LittleLemonLogo(myClass:myClass)
            }
        }
        
    }
}

#Preview {
    MenuItemsView()
}
