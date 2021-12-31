//
//  Days_LeftApp.swift
//  Days Left
//
//  Created by Zheng C on 2021-12-31.
//

import SwiftUI

@main
struct Days_LeftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
