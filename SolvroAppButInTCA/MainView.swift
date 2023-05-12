//
//  MainView.swift
//  SolvroAppButInTCA
//
//  Created by Jakub Chojak on 12/05/2023.
//

import SwiftUI
import ComposableArchitecture

struct MainView: View {
    let store: StoreOf<Main>
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            TabView(selection: viewStore.binding(get: \.selectedTab, send: Main.Action.tabSelected)) {
                BeerListView(
                    store: Store(initialState: BeerRed.State(), reducer: BeerRed())
                )
                .tabItem {
                    Label("Piwa", systemImage: "mug.fill")
                }
                .tag(Main.Tab.allBeers)
            }
        }
    }
}

