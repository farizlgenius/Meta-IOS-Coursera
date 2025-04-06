//
//  LittleLemonLogo.swift
//  LittleLemon
//
//  Created by Far-iz Lengha on 26/10/2567 BE.
//

import SwiftUI

struct LittleLemonLogo: View {
    //@Binding var bindingVariable:Bool
    var myClass:MyClass
    var body: some View {
        Image("littleLemonLogo")
            .resizable()
            .scaledToFit()
            .frame(width:100,height:100)
        Button(action: {
            //bindingVariable.toggle()
            myClass.showLogo.toggle()
        }, label: {
            Text("Toggle Logo Visibility OFF")
                .font(.title2)
        })
    }
}

//#Preview {
//    LittleLemonLogo(myClass: MyClass )
//}
