//
//  BeerRed.swift
//  SolvroAppButInTCA
//
//  Created by Jakub Chojak on 10/05/2023.
//

import Foundation
import ComposableArchitecture

struct BeerRed: ReducerProtocol {
    struct State: Equatable {
        var beers: [Beer] = [Beer]()
    }
    
    enum Action: Equatable {
        case loadBeersFromAPI(TaskResult<[Beer]>)
        case initializer
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
            case .initializer:
                return .task {
                    await .loadBeersFromAPI(
                        TaskResult {
                            [Beer](await loadBeersFromAPI()!)
                        }
                    )
                }
            
            case .loadBeersFromAPI(.success(let beers)):
                    state.beers = beers
                    return .none
            
            case .loadBeersFromAPI(.failure(_)):
                print("Error while API reading")
                return .none
            }
    }
}
