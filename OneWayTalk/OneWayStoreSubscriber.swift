//
//  OneWayStoreSubscriber.swift
//  OneWayTalk
//
//  Created by Richard Adem on 12/4/17.
//  Copyright © 2017 Richard Adem. All rights reserved.
//

import Foundation
import ReSwift

extension OneWayViewController: StoreSubscriber {
    func newState(state: AppState) {
        contentView.countLabel.text = "\(state.count)"
    }
}
