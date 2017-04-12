//
//  AppReducer.swift
//  OneWayTalk
//
//  Created by Richard Adem on 8/4/17.
//  Copyright © 2017 Richard Adem. All rights reserved.
//

import Foundation

import ReSwift

struct AppReducer: Reducer {
    
    func handleAction(action: Action, state: AppState?) -> AppState {
        
        var state = state ?? AppState()
        
        switch action {
        case _ as TapAddingAction:
            state.count += 1
        default:
            break
        }
        
        return state
        
    }
}
