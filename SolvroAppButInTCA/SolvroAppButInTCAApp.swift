//
//  SolvroAppButInTCAApp.swift
//  SolvroAppButInTCA
//
//  Created by Jakub Chojak on 07/05/2023.
//

import SwiftUI
import ComposableArchitecture

@main
struct SolvroAppButInTCAApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(store: Store(initialState: Main.State(), reducer: Main()))
        }
    }
}
