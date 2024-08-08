//
//  InspireMeApp.swift
//  InspireMe
//
//  Created by Артур on 02.08.2024.
//

import SwiftUI
import SwiftData

@main
struct InspireMeApp: App {
    
    private var homeViewModel = HomeViewModel()
    
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

    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: homeViewModel)
        }
        .modelContainer(sharedModelContainer)
    }
}
