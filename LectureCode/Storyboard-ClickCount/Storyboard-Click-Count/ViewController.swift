//
//  ViewController.swift
//  Storyboard-Click-Count
//
//  Created by Jason Schatz on 2/9/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var counter: Counter!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = Counter(initialValue: 0)
    }
    
    @IBAction func increment() {
        counter.increment()
        label!.text = "\(counter.value)"
    }
}

