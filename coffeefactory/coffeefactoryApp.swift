//
//  coffeefactoryApp.swift
//  coffeefactory
//
//  Created by yuncoffee on 12/12/23.
//

import SwiftUI
import SwiftData
import CoffeeFactorySwift

@main
struct coffeefactoryApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    init() {
        CoffeeFactoryFont.registerFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
