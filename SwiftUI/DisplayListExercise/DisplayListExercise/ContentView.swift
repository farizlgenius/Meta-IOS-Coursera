//
//  ContentView.swift
//  DisplayListExercise
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var model = Model()
    var body: some View {
        VStack {
            List{
                ForEach(model.meals){ item in Text(item.name)
                }
            }
        }
        .padding()
    }
}

struct Item:Identifiable {
    let id = UUID()
    let name:String
}

class Model : ObservableObject{
    @Published var meals : [Item] = menuItems()
    
    static func menuItems() -> [Item]{
        return
    [
        Item(name: "Lasagna"),
        Item(name: "Fettuccini Alfredo"),
        Item(name: "Spaghetti"),
        Item(name: "Avocado Toast"),
        Item(name: "Tortellini"),
        Item(name: "Pizza")
    ]
    }
}



#Preview {
    ContentView()
}
