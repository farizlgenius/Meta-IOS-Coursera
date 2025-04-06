//
//  ContentView.swift
//  MyAppCoreData
//
//  Created by Far-iz Lengha on 5/11/2567 BE.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
        sortDescriptors: [],
        animation: .default
    )
    private var dishes:FetchedResults<Dish>
    
    

    var body: some View {
        
    }


}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
