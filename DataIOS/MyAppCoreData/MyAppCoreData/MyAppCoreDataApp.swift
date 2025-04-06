//
//  MyAppCoreDataApp.swift
//  MyAppCoreData
//
//  Created by Far-iz Lengha on 5/11/2567 BE.
//

import SwiftUI

@main
struct MyAppCoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
