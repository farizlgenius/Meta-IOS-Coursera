//
//  CoreDataEntityApp.swift
//  CoreDataEntity
//
//  Created by Far-iz Lengha on 9/11/2567 BE.
//

import SwiftUI

@main
struct CoreDataEntityApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
