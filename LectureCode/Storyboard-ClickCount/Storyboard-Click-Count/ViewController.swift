//
//  ViewController.swift
//  Storyboard-Click-Count
//
//  Created by Jason Schatz on 2/9/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var count = 0

    @IBOutlet var label: UILabel?
    
    @IBAction func increment() {
        count += 1
        label!.text = "\(count)"
    }
}

