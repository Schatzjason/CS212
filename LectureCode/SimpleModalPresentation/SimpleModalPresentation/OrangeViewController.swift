//
//  OrangeViewController.swift
//  SimpleModalPresentation
//
//  Created by Jason Schatz on 10/5/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {
    
    var message: String?
    
    @IBOutlet var label: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if let message = self.message {
            label.text = message
        }
    }
    
    @IBAction func dismissMe() {
        self.dismiss(animated: true, completion: nil)
    }
} 
