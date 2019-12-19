//
//  iButton.swift
//  iButton
//
//  Created by Hari_Vrinda on 12/19/19.
//  Copyright © 2019 Hari_Vrinda. All rights reserved.
//

import UIKit

public class iButton: UIButton {
    
    public typealias DidTapButton = (iButton) -> ()
    
    public var didTouchUpInside: DidTapButton? {
        didSet {
            if didTouchUpInside != nil {
                addTarget(self, action: #selector(didTouchUpInside(_:)), for: .touchUpInside)
            } else {
                removeTarget(self, action: #selector(didTouchUpInside(_:)), for: .touchUpInside)
            }
        }
    }
    
    // MARK: - Actions
    @objc func didTouchUpInside(_ sender: UIButton) {
        if let handler = didTouchUpInside {
            handler(self)
        }
    }
    
}
