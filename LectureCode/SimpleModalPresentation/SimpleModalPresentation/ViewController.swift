//
//  ViewController.swift
//  SimpleModalPresentation
//
//  Created by Jason Schatz on 10/5/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var rockButton: UIButton!
    
    private var count: Int = 0
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func presentOrangeViewController(sender: UIButton) {
        
        // Get an "Orange" view controller from Storyboard
        let ovc = self.storyboard!.instantiateViewController(withIdentifier: "Orange") as! OrangeViewController
        
        // Configure background color in the orange view controller
        ovc.view.backgroundColor = (count % 2 == 0) ? UIColor.orange : UIColor.green
        
        // Bump the count, and configure the orange view controller
        count += 1
        ovc.message = "\(count)"
        
        // Put it on the screen. "Present" it.
        self.present(ovc, animated: true, completion: nil)
    }
}

