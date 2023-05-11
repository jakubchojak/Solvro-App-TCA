//
//  BeerDetail.swift
//  SolvroAppButInTCA
//
//  Created by Jakub Chojak on 11/05/2023.
//

import Foundation
import ComposableArchitecture

struct BeerDetail: ReducerProtocol {
    struct State: Equatable {
        let beer: Beer
    }
    
    enum Action: Equatable {
        
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        
    }
}
