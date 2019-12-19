//
//  ViewController.swift
//  iButtonExample
//
//  Created by Hari_Vrinda on 12/19/19.
//  Copyright © 2019 Hari_Vrinda. All rights reserved.
//

import UIKit
import iButton

class ViewController: UIViewController {

    @IBOutlet weak var buttonClickMe: iButton? {
        didSet {
            guard let button = buttonClickMe else { return }

            button.didTouchUpInside = { sender in
                self.buttonClickMe!.isSelected = !sender.isSelected

                print("Button is \(self.buttonClickMe!.isSelected ? "selected" : "not selected")")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

