//
//  BeerListView.swift
//  SolvroAppButInTCA
//
//  Created by Jakub Chojak on 10/05/2023.
//

import SwiftUI
import ComposableArchitecture

struct BeerListView: View {
    let store: StoreOf<BeerRed>
    
    var body: some View {
        WithViewStore(self.store, observe:{ $0 }) { viewStore in
            NavigationView {
                VStack {
                    List {
                        ForEach(viewStore.state.beers, id:\.self) { beer in
                            NavigationLink(destination: BeerDetailView(store: Store(initialState: BeerDetail.State(beer: beer), reducer: BeerDetail()))) {
                                Text(beer.name)
                            }
                        }
                    }
                }
                .onAppear(
                    perform: {
                        viewStore.send(.initializer)
                    }
                )
            }
        }
    }
}
