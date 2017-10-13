//
//  BlueViewController.swift
//  SimpleNavigation
//
//  Created by Jason Schatz on 10/12/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class BlueViewController : UIViewController {
    
    @IBOutlet var theLabel: UILabel!
    
    var message: String!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        theLabel.text = message
    }
}
