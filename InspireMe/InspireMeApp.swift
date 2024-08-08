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
<<<<<<< HEAD
=======
    
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
>>>>>>> 82972ee6d899c92a474fd8c9fb7db7c1f30616d7

    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: homeViewModel)
        }
    }
}
