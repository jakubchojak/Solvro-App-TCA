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
            VStack {
                Button {
                    viewStore.send(.initializer)
                } label: {
                    Text("Load beers")
                }

                List {
                    ForEach(viewStore.state.beers, id:\.self) { beer in
                        Text(beer.name)
                    }
                }
            }
        }
    }
}
