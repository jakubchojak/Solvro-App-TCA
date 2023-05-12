//
//  Main.swift
//  SolvroAppButInTCA
//
//  Created by Jakub Chojak on 12/05/2023.
//

import Foundation
import ComposableArchitecture

struct Main: ReducerProtocol {
    struct State: Equatable {
        var selectedTab = Tab.allBeers
    }
    
    enum Tab {
        case allBeers
    }
    
    enum Action: Equatable {
        case tabSelected(Tab)
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
            
        case .tabSelected(let tab):
            state.selectedTab = tab
            return .none
        }
    }
}
