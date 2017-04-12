//
//  OneWayView.swift
//  OneWayTalk
//
//  Created by Richard Adem on 8/4/17.
//  Copyright © 2017 Richard Adem. All rights reserved.
//

import UIKit

class OneWayView: UIView {
    
    // MARK: - Subviews var
    let addingButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(NSLocalizedString("oneway.add", comment: ""), for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.setTitleColor(.lightGray, for: .highlighted)
        return button
    }()
    
    let countLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .orange
        label.font = UIFont.systemFont(ofSize: 40)
        return label
    }()
    
    // MARK: - View lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Setup this view
        addSubview(addingButton)
        addingButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        addingButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50).isActive = true
        
        addSubview(countLabel)
        countLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        countLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
