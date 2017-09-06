//
//  ViewController.swift
//  Test1
//
//  Created by Jason Schatz on 2/2/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let kCount = "click-count"
    
    // This is the model class, See Counter.swift
    var counter: Counter!
    
    // A reference to the label in the view heirarchy
    // We need this so that we can set its text
    var label: UILabel?
    
    // View Did Load:
    // This is called once, as soon as the view property is 
    // ready to be configured. It is called before the app takes
    // over the screen.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Find the app delegate, in order to get its counter
        self.counter = Counter(initialValue: 0)
        
        // Make a label object
        let frame = CGRect(x: 125, y: 120, width: 100, height: 50)
        label = UILabel(frame: frame)
        label!.font = UIFont.systemFont(ofSize: 70)
        label!.text = "\(counter.value)"
        self.view.addSubview(label!)
        
        // Make a button
        let buttonFrame = CGRect(x: 115, y: 220, width: 100, height: 50)
        let button = UIButton(type: .system)
        button.frame = buttonFrame
        button.setTitle("Click", for: .normal)
        self.view.addSubview(button)
        
        // Configure the button with a target/action
        button.addTarget(self, action: #selector(incrementTheCount), for: .touchDown)
    }
    
    // This is the method that the button will call when it is tapped
    
    func incrementTheCount() {
        counter.increment()
        label!.text = "\(counter.value)"
    }
    
}







