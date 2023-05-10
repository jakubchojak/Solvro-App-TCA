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
            BeerListView(store: Store(initialState: BeerRed.State(), reducer: BeerRed()))
        }
    }
}
