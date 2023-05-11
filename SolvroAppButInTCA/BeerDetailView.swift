//
//  BeerDetailView.swift
//  SolvroAppButInTCA
//
//  Created by Jakub Chojak on 11/05/2023.
//

import SwiftUI
import ComposableArchitecture

struct BeerDetailView: View {
    let store: StoreOf<BeerDetail>
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            ScrollView {
                VStack {
                    AsyncImage(url: URL(string: viewStore.state.beer.image_url), scale: 5.0)
                    Text(viewStore.state.beer.name)
                        .font(.system(size: 28))
                        .bold()
                        .padding()
                    Text("Pierwsze warzenie: " + viewStore.state.beer.first_brewed)
                        .italic()
                    Text(viewStore.state.beer.tagline)
                        .italic()
                        .font(.system(size: 12))
                        .padding(.top, 10)
                    Text(viewStore.state.beer.description)
                        .padding()
                }
            }
        }
    }
}
