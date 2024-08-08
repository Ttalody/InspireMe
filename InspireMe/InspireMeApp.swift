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

    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: homeViewModel)
        }
    }
}
