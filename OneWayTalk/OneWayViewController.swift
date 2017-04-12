//
//  OneWayViewController.swift
//  OneWayTalk
//
//  Created by Richard Adem on 8/4/17.
//  Copyright © 2017 Richard Adem. All rights reserved.
//

import UIKit
import ReSwift

class OneWayViewController: UIViewController {
    
    // MARK: - View
    
    var contentView: OneWayView {
        guard let contentView = self.view as? OneWayView else {
            fatalError("Cannot create content view")
        }
        return contentView
    }
    
    // MARK: - View lifecycle
    
    override func loadView() {
        self.view = OneWayView()
        
        // Relationships between view controller and view
        contentView.addingButton.addTarget(self, action: #selector(addingButtonTapped), for: .touchUpInside)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mainStore.subscribe(self)
    }
    
    // MARK: Actions
    
    func addingButtonTapped(sender: UIButton) {
        mainStore.dispatch(TapAddingAction())
    }
    
    // MARK: - Memory manager
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
